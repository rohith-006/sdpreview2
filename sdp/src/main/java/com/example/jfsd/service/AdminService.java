package com.example.jfsd.service;

import java.util.List;

import com.example.jfsd.model.Admin;
import com.example.jfsd.model.BlogPost;
import com.example.jfsd.model.Blogger;

public interface AdminService {

    // Method to save admin
    Admin saveAdmin(Admin admin);

    // Method to find admin by username
    Admin findadminbyusername(String username);

    // Method to approve a blog post
    void approvePost(Long postId);

    // Method to reject a blog post
    void rejectPost(Long postId);

    List<BlogPost> getPostsByStatus(String status);


    List<BlogPost> getPendingPosts();

    List<BlogPost> getApprovedPosts();

    List<BlogPost> getRejectedPosts();
}
