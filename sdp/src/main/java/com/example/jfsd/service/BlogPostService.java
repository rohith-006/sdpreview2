package com.example.jfsd.service;

import com.example.jfsd.model.BlogPost;
import com.example.jfsd.model.Blogger;

import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

public interface BlogPostService {
 // Method to save a blog post with image and hashtags
    BlogPost savePost(BlogPost blogPost, MultipartFile image, String hashtags) throws IOException;

    // Method to get posts by blogger's ID
    List<BlogPost> getPostsByBlogger(Long bloggerId);

    // Method to update the status of a blog post (approve/reject)
    void updatePostStatus(Long postId, String status);
    public List<BlogPost> getPostsByBloggerAndStatus(Blogger blogger, String status) ;
    }
