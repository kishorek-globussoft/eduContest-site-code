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
@Table(name = "problem")
public class Problem implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "title")
    private String title;
    @Basic(optional = false)
    @Column(name = "code")
    private String code;
    @Basic(optional = false)
    @Column(name = "question")
    private String question;
    @Basic(optional = false)
    @Column(name = "input")
    private String input;
    @Basic(optional = false)
    @Column(name = "output")
    private String output;
    @Column(name = "constraints")
    private String constraints;
    @Basic(optional = false)
    @Column(name = "difficulty")
    private int difficulty;
    @Column(name = "author")
    private String author;
    @Basic(optional = false)
    @Column(name = "submission")
    private int submission;
    @Basic(optional = false)
    @Column(name = "date")
    @Temporal(TemporalType.DATE)
    private Date date;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "timelimit")
    private Double timelimit;
    @Column(name = "sourcelimit")
    private Double sourcelimit;

    public Problem() {
    }

    public Problem(Integer id) {
        this.id = id;
    }

    public Problem(Integer id, String title, String code, String question, String input, String output, int difficulty, int submission, Date date) {
        this.id = id;
        this.title = title;
        this.code = code;
        this.question = question;
        this.input = input;
        this.output = output;
        this.difficulty = difficulty;
        this.submission = submission;
        this.date = date;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getInput() {
        return input;
    }

    public void setInput(String input) {
        this.input = input;
    }

    public String getOutput() {
        return output;
    }

    public void setOutput(String output) {
        this.output = output;
    }

    public String getConstraints() {
        return constraints;
    }

    public void setConstraints(String constraints) {
        this.constraints = constraints;
    }

    public int getDifficulty() {
        return difficulty;
    }

    public void setDifficulty(int difficulty) {
        this.difficulty = difficulty;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getSubmission() {
        return submission;
    }

    public void setSubmission(int submission) {
        this.submission = submission;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Double getTimelimit() {
        return timelimit;
    }

    public void setTimelimit(Double timelimit) {
        this.timelimit = timelimit;
    }

    public Double getSourcelimit() {
        return sourcelimit;
    }

    public void setSourcelimit(Double sourcelimit) {
        this.sourcelimit = sourcelimit;
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
        if (!(object instanceof Problem)) {
            return false;
        }
        Problem other = (Problem) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.edumongoose.entity.Problem[ id=" + id + " ]";
    }
    
}
