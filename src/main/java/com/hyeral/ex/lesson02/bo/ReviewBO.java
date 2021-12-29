package com.hyeral.ex.lesson02.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyeral.ex.lesson02.dao.ReviewDAO;
import com.hyeral.ex.lesson02.model.Review;

@Service
public class ReviewBO {
	
	@Autowired
	private ReviewDAO reviewDAO;
	
	public Review getReview(int id) {
		return reviewDAO.selectReview(id);
	}
	
	public int addReview(int storeId, String menu, String userName, double point, String review) {
		return reviewDAO.insertReview(storeId, menu, userName, point, review);
	}
	
	public int addReview2(Review review) {
		return reviewDAO.insertReviewObject(0, null, null, 0, null);
	}
	
}
