package com.layui;

import com.layui.bean.Address;
import com.layui.bean.Person;
import com.mongodb.MongoClientSettings;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.Updates;
import com.mongodb.client.result.DeleteResult;
import com.mongodb.client.result.UpdateResult;
import org.bson.codecs.configuration.CodecRegistries;
import org.bson.codecs.configuration.CodecRegistry;
import org.bson.codecs.pojo.PojoCodecProvider;
import org.bson.types.ObjectId;
import org.junit.Before;
import org.junit.Test;

import java.util.Arrays;
import java.util.List;
import java.util.function.Consumer;

/**
 * @Author: javan
 * @Date: 2019/6/11
 */
public class MongoDBTest {
    private MongoCollection<Person> personCollection;

    @Before
    public void init() {
        //定义对象的解码注册器
        CodecRegistry pojoCodecRegistry = CodecRegistries.fromRegistries(MongoClientSettings.getDefaultCodecRegistry(),
                CodecRegistries.fromProviders(PojoCodecProvider.builder().automatic(true).build()));
        MongoClient mongoClient = MongoClients.create("mongodb://127.0.0.1:27017");
        MongoDatabase mongoDatabase = mongoClient.getDatabase("testdb").withCodecRegistry(pojoCodecRegistry);
        this.personCollection = mongoDatabase.getCollection("person", Person.class);
    }

    @Test
    public void testInsert() {
        Person person = new Person(ObjectId.get(), "张三", 20, new Address("人民路", "上海市", "666666"));
        this.personCollection.insertOne(person);
        System.out.println("插入数据成功");
    }

    @Test
    public void testInserts() {
        List<Person> personList = Arrays.asList(
                new Person(ObjectId.get(), "张霞", 20, new Address("林丰管路", "长沙市", "12331")),
                new Person(ObjectId.get(), "李四", 21, new Address("南路景西路", "上海市", "6666")),
                new Person(ObjectId.get(), "小刘", 21, new Address("天涯路", "海南市", "6666"))
        );
        this.personCollection.insertMany(personList);
        System.out.println("插入数据成功");
    }

    @Test
    public void testQuery() {
        this.personCollection.find(Filters.eq("name", "李四"))
                .forEach((Consumer<? super Person>) person -> System.out.println(person));
    }

    @Test
    public void testUpdate(){
        UpdateResult updateResult = this.personCollection.updateMany(Filters.eq("name", "小刘"), Updates.set("age", 22));
        System.out.println(updateResult);
    }

    @Test
    public void testDelete(){
        DeleteResult deleteResult = this.personCollection.deleteOne(Filters.eq("name", "小刘"));
        System.out.println(deleteResult);
    }
}
