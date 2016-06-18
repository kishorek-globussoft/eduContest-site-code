/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edumongoose.daoimpl;

import com.edumongoose.dao.ProblemDao;
import com.edumongoose.entity.Problem;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Admin
 */
@Repository
public class ProblemDaoImpl implements ProblemDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory SessionFactory) {
        this.sessionFactory = SessionFactory;
    }

    @Override
    public int saveProblem(Problem problem) {
        this.sessionFactory.openSession().save(problem);
        return 1;
    }

    @Override
    public List<Problem> getAllProblems() {
        Session session = this.sessionFactory.openSession();
        Query query = session.createQuery("from Problem");
        return query.list();
    }

    @Override
    public List<Problem> getAllProblems(int userId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Problem getProblem(int problemId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Problem getProblem(String code) {
        Session session = this.sessionFactory.openSession();
        Query query = session.createQuery("from Problem where code = :code");
        query.setString("code", code);
        List<Problem> problems = query.list();
        Problem problem = new Problem();
        if (problems != null || problems.size() > 0) {
            problem = problems.get(0);
        }
        return problem;
    }

}
