package com.example.jfsd.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.example.jfsd.model.*;
@Repository
public interface BlogPostRepository extends JpaRepository<BlogPost, Long> {

	List<BlogPost> findByBloggerId(Long id);
	@Query("SELECT p FROM BlogPost p WHERE p.status = :status")
	List<BlogPost> findByStatus(@Param("status") String status);

   
    List<BlogPost> findByBloggerAndStatus(Blogger blogger, String status);

}


