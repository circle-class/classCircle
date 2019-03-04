package com.qf.manager.pojo.po;

import lombok.Data;

import java.util.Date;

@Data
public class Situation {

    /*FieldTypeComment
    id bigint(11) NOT NULL
    detail varchar(255) NULL
    uid bigint(11) NULL
    cid bigint(11) NULL
    publishdate date NULL
    detailtype int(11) NULL
    situation varchar(255) NULL*/
        private Long id;
        private String detial;
        private Long uid;
        private Long cid;
        private Date publishdate;
        private Integer detailtype;
        private String situation;
}
