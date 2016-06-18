/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edumongoose.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "solution")
@NamedQueries({
    @NamedQuery(name = "Solution.findAll", query = "SELECT s FROM Solution s")})
public class Solution implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "problemId")
    private int problemId;
    @Basic(optional = false)
    @Column(name = "userId")
    private int userId;
    @Column(name = "solution")
    private String solution;
    @Basic(optional = false)
    @Column(name = "language")
    private int language;
    @Basic(optional = false)
    @Column(name = "solutionStatus")
    private boolean solutionStatus;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "timeTaken")
    private Double timeTaken;
    @Column(name = "memoryTaken")
    private Double memoryTaken;
    @Basic(optional = false)
    @Column(name = "date")
    @Temporal(TemporalType.DATE)
    private Date date;

    public Solution() {
    }

    public Solution(Integer id) {
        this.id = id;
    }

    public Solution(Integer id, int problemId, int userId, int language, boolean solutionStatus, Date date) {
        this.id = id;
        this.problemId = problemId;
        this.userId = userId;
        this.language = language;
        this.solutionStatus = solutionStatus;
        this.date = date;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getProblemId() {
        return problemId;
    }

    public void setProblemId(int problemId) {
        this.problemId = problemId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getSolution() {
        return solution;
    }

    public void setSolution(String solution) {
        this.solution = solution;
    }

    public int getLanguage() {
        return language;
    }

    public void setLanguage(int language) {
        this.language = language;
    }

    public boolean getSolutionStatus() {
        return solutionStatus;
    }

    public void setSolutionStatus(boolean solutionStatus) {
        this.solutionStatus = solutionStatus;
    }

    public Double getTimeTaken() {
        return timeTaken;
    }

    public void setTimeTaken(Double timeTaken) {
        this.timeTaken = timeTaken;
    }

    public Double getMemoryTaken() {
        return memoryTaken;
    }

    public void setMemoryTaken(Double memoryTaken) {
        this.memoryTaken = memoryTaken;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Solution)) {
            return false;
        }
        Solution other = (Solution) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.edumongoose.entity.Solution[ id=" + id + " ]";
    }
    
}
