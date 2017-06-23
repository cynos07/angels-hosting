package kr.angels.content;

import java.util.Date;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * Created by cynos07 on 2017-04-13.
 */
public class Grams {
    private static final AtomicInteger COUNTER = new AtomicInteger();

    private int id;
    private String writer;
    private String title;
    private String contents;
    private String tags;
    private Date date;

    public Grams() {
    }

    public Grams(int id, String writer, String title, String contents, String tags, Date date) {
        this.id = id;
        this.writer = writer;
        this.title = title;
        this.contents = contents;
        this.tags = tags;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public String getTags() {
        return tags;
    }

    public void setTags(String tags) {
        this.tags = tags;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
