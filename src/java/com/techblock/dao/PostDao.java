/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.techblock.dao;

import com.techblock.entities.Category;
import com.techblock.entities.Post;
import com.techblock.helpers.myConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class PostDao {

    Connection con;

    public PostDao(Connection con) {
        this.con = con;
    }

    public ArrayList<Category> getAllCategories() {

        ArrayList<Category> list = new ArrayList<>();

        try {
            String s = "select * from categories";
            PreparedStatement pst = myConnection.getConnection().prepareStatement(s);
            ResultSet resultSet = pst.executeQuery();

            while (resultSet.next()) {
                int cid = resultSet.getInt("cId");
                String name = resultSet.getString("cname");
                String description = resultSet.getString("cdescription");

                Category category = new Category(cid, name, description);
                list.add(category);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;

    }

    public boolean savePost(Post post) {
        boolean f = false;

        try {
            String s = "insert into Posts (pTitle, pContent, pCode, pPic, AuthorId, Tags, catId) values(?,?,?,?,?,?,?)";
            PreparedStatement pst = myConnection.getConnection().prepareStatement(s);

            pst.setString(1, post.getpTitle());
            pst.setString(2, post.getpContent());
            pst.setString(3, post.getpCode());
            pst.setString(4, post.getpPic());
            pst.setInt(5, post.getAuthorId());
            pst.setString(6, post.getTags());
            pst.setInt(7, post.getCatId());
            pst.executeUpdate();

            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    //    GET ALL POSTS DEFAULT PAGE VIEW
    public List<Post> getAllPost() {

        List<Post> list = new ArrayList<>();

        try {
            String s = "select * from posts order by pid desc";
            PreparedStatement pst = myConnection.getConnection().prepareStatement(s);
            ResultSet resultSet = pst.executeQuery();

            while (resultSet.next()) {

                int pId = resultSet.getInt("pid");
                String pTitle = resultSet.getString("pTitle");
                String pContent = resultSet.getString("pContent");
                String pCode = resultSet.getString("pCode");
                String pPic = resultSet.getString("pPic");
                Timestamp pDate = resultSet.getTimestamp("pDate");
                int catId = resultSet.getInt("catId");
                String tags = resultSet.getString("Tags");
                int AuthorId = resultSet.getInt("AuthorId");

                Post post = new Post(pId, pTitle, pContent, pCode, pPic, pDate, catId, tags, AuthorId);
                list.add(post);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Post> getPostsById(int id) {

        List<Post> list = new ArrayList<>();

        try {
            String s = "select * from posts where catid=?";
            PreparedStatement pst = myConnection.getConnection().prepareStatement(s);
            pst.setInt(1, id);
            ResultSet resultSet = pst.executeQuery();

            while (resultSet.next()) {

                int pId = resultSet.getInt("pid");
                String pTitle = resultSet.getString("pTitle");
                String pContent = resultSet.getString("pContent");
                String pCode = resultSet.getString("pCode");
                String pPic = resultSet.getString("pPic");
                Timestamp pDate = resultSet.getTimestamp("pDate");
                int catId = resultSet.getInt("catId");
                String tags = resultSet.getString("Tags");
                int AuthorId = resultSet.getInt("AuthorId");

                Post post = new Post(pId, pTitle, pContent, pCode, pPic, pDate, catId, tags, AuthorId);
                list.add(post);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Post getSinglePost(String title) {

        Post post = null;
        try {
            String s = "Select * from Posts where pTitle=?";
            PreparedStatement pst = myConnection.getConnection().prepareStatement(s);
            pst.setString(1, title);
            ResultSet resultSet = pst.executeQuery();

            if (resultSet.next()) {

                int pId = resultSet.getInt("pid");
                String pTitle = resultSet.getString("pTitle");
                String pContent = resultSet.getString("pContent");
                String pCode = resultSet.getString("pCode");
                String pPic = resultSet.getString("pPic");
                Timestamp pDate = resultSet.getTimestamp("pDate");
                int catId = resultSet.getInt("catId");
                String tags = resultSet.getString("Tags");
                int AuthorId = resultSet.getInt("AuthorId");

                post = new Post(pId, pTitle, pContent, pCode, pPic, pDate, catId, tags, AuthorId);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return post;
    }

    public String getPostShortContent(int pId) {
        String content = null;
//SUBSTRING('pContent',1,100) 
        try {
            String s = "select ptitle, SUBSTR(\"pContent\", 0, 100) from posts where pid=?";
            PreparedStatement pst = myConnection.getConnection().prepareStatement(s);
            pst.setInt(1, pId);

            ResultSet resultSet = pst.executeQuery();
            if (resultSet.next()) {
                content = resultSet.getString("pContent");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return content;
    }

    public List<Post> getPostsByAuthorId(int AuthorId) {

        List<Post> list = new ArrayList<>();

        try {
            String s = "select * from posts where AuthorId=? order by PID DESC";
            PreparedStatement pst = myConnection.getConnection().prepareStatement(s);
            pst.setInt(1, AuthorId);
            ResultSet resultSet = pst.executeQuery();

            while (resultSet.next()) {

                int pId = resultSet.getInt("pid");
                String pTitle = resultSet.getString("pTitle");
                String pContent = resultSet.getString("pContent");
                String pCode = resultSet.getString("pCode");
                String pPic = resultSet.getString("pPic");
                Timestamp pDate = resultSet.getTimestamp("pDate");
                int catId = resultSet.getInt("catId");
                String tags = resultSet.getString("Tags");
                int Authorid = resultSet.getInt("AuthorId");

                Post post = new Post(pId, pTitle, pContent, pCode, pPic, pDate, catId, tags, Authorid);
                list.add(post);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public boolean deletePostById(int postId) {
        boolean result = false;
        try {
            String s = "delete from posts where pid=?";
            PreparedStatement pst = myConnection.getConnection().prepareStatement(s);
            pst.setInt(1, postId);
            pst.executeUpdate();
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public boolean UpdatePostByPostId(int PostId, Post post) {
        boolean result = false;

        try {
            String s = "update posts set pTitle=?, pContent=?, pCode=?, Tags=? where pid=?";
            PreparedStatement pst = myConnection.getConnection().prepareStatement(s);
            pst.setString(1, post.getpTitle());
            pst.setString(2, post.getpContent());
            pst.setString(3, post.getpCode());
            pst.setString(4, post.getTags());
            pst.setInt(5, PostId);
            pst.executeUpdate();
            result = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public Post getSinglePostByPostId(int PostId) {
        Post post = null;
        
        try {
            String s = "Select * from Posts where pid=?";
            PreparedStatement pst = myConnection.getConnection().prepareStatement(s);
            pst.setInt(1, PostId);
            ResultSet resultSet = pst.executeQuery();
            
            if (resultSet.next()) {

                int pId = resultSet.getInt("pid");
                String pTitle = resultSet.getString("pTitle");
                String pContent = resultSet.getString("pContent");
                String pCode = resultSet.getString("pCode");
                String pPic = resultSet.getString("pPic");
                Timestamp pDate = resultSet.getTimestamp("pDate");
                int catId = resultSet.getInt("catId");
                String tags = resultSet.getString("Tags");
                int AuthorId = resultSet.getInt("AuthorId");

                post = new Post(pId, pTitle, pContent, pCode, pPic, pDate, catId, tags, AuthorId);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return post;
    }
}
