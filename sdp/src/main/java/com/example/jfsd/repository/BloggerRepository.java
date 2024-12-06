package com.example.jfsd.repository;


import com.example.jfsd.model.BlogPost;
import com.example.jfsd.model.Blogger;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface BloggerRepository extends JpaRepository<Blogger, Long> {
    Blogger findByUsername(String username); // Custom query method to find Blogger by username
    
    // Updated the method to match the entity field name
}
