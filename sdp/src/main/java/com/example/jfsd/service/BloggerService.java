package com.example.jfsd.service;



import java.util.List;

import com.example.jfsd.model.BlogPost;
import com.example.jfsd.model.Blogger;

public interface BloggerService {
    Blogger saveBlogger(Blogger blogger);
    Blogger findBloggerByUsername(String username);
    

    }

