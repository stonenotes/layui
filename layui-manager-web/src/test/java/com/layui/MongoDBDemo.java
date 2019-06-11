package com.layui;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Projections;
import com.mongodb.client.model.Sorts;
import com.mongodb.client.model.Updates;
import com.mongodb.client.result.DeleteResult;
import com.mongodb.client.result.UpdateResult;
import org.bson.Document;
import org.junit.Before;
import org.junit.Test;

import java.util.function.Consumer;

import static com.mongodb.client.model.Filters.*;

/**
 * @Author: javan
 * @Date: 2019/6/11
 */
public class MongoDBDemo {

    private MongoCollection<Document> mongoCollection;

    public static void main(String[] args) {
        MongoClient mongoClient = MongoClients.create("mongodb://127.0.0.1:27017");
        MongoDatabase mongoDatabase = mongoClient.getDatabase("testdb");
        MongoCollection<Document> userCollection = mongoDatabase.getCollection("user");
        userCollection.find().limit(10).forEach((Consumer<? super Document>) document -> {
            System.out.println(document.toJson());
        });
        mongoClient.close();
    }

    @Before
    public void init() {
        MongoClient mongoClient = MongoClients.create("mongodb://127.0.0.1:27017");
        MongoDatabase mongoDatabase = mongoClient.getDatabase("testdb");
        this.mongoCollection = mongoDatabase.getCollection("user");
    }

    @Test
    public void testQuery() {
        this.mongoCollection.find(
                and(
                        lte("age", 50),
                        gte("id", 100)
                ))
                .sort(Sorts.descending("id"))
                .projection(
                        Projections.fields(
                                Projections.include("id", "age", "username"),
                                Projections.excludeId()
                        ))
                .forEach((Consumer<? super Document>) document -> {
                    System.out.println(document.toJson());
                });
    }

    @Test
    public void testInsert() {
        Document document = new Document("id", 10001)
                .append("name", "张思")
                .append("age", 30);
        this.mongoCollection.insertOne(document);
        System.out.println("插入数据成功");
        this.mongoCollection.find(eq("id", 10001)).forEach((Consumer<? super Document>) doc -> System.out.println(doc.toJson()));
    }

    @Test
    public void testUpdate(){
        UpdateResult updateResult = this.mongoCollection.updateOne(eq("id", 10001), Updates.set("age", 25));
        System.out.println(updateResult);
        this.mongoCollection.find(eq("id", 10001)).forEach((Consumer<? super Document>) doc -> System.out.println(doc.toJson()));
    }

    @Test
    public void testDelete(){
        DeleteResult deleteResult = this.mongoCollection.deleteOne(eq("id", 10001));
        System.out.println(deleteResult);
    }
}
