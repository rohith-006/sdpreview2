package com.example.jfsd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.jfsd.model.Admin;
import com.example.jfsd.model.BlogPost;
import com.example.jfsd.model.Blogger;
import com.example.jfsd.repository.AdminRepository;
import com.example.jfsd.repository.BlogPostRepository;
import com.example.jfsd.repository.BloggerRepository;
@Service
public class AdminServiceImpl implements AdminService {
	@Autowired 
	private AdminRepository adminrepository;
	 @Autowired
	    private BlogPostRepository blogPostRepository;
	 @Autowired
	 private BlogPostService blogPostService;
	 @Autowired
	 private  BloggerRepository bloggerRepository;

	@Override
	public Admin saveAdmin(Admin admin) {
		
		return adminrepository.save(admin);
		
	}
	public List<BlogPost> getPostsByStatus(String status) {
	    return blogPostRepository.findByStatus(status);
	}


	@Override
	public Admin findadminbyusername( String username) {
		
		return adminrepository.findByUsername(username);
	}
 @Override
	        public void approvePost(Long postId) {
	            blogPostService.updatePostStatus(postId, "approved"); // Update status to approved
	        }

	        @Override
	        public void rejectPost(Long postId) {
	            blogPostService.updatePostStatus(postId, "rejected"); // Update status to rejected
	        }

	        @Override
	        public List<BlogPost> getPendingPosts() {
	            return blogPostRepository.findByStatus("pending"); // Get all pending posts for admin review
	        }

	        @Override
	        public List<BlogPost> getApprovedPosts() {
	            return blogPostRepository.findByStatus("approved"); // Get all approved posts
	        }

	        @Override
	        public List<BlogPost> getRejectedPosts() {
	            return blogPostRepository.findByStatus("rejected"); // Get all rejected posts
	        }


}

	    