package com.nus.zkk.bodhifiles_system.utils;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.GlobalConfig;
import com.baomidou.mybatisplus.generator.config.PackageConfig;
import com.baomidou.mybatisplus.generator.config.rules.DateType;

/**
 * @ author jojo
 * @ date 2024/10/13
 * @ description:骨架代码生成脚本
 */
public class CodeGenerator {
    public static void main(String[] args) {
        AutoGenerator ag = new AutoGenerator();
        //全局配置
        GlobalConfig gc = new GlobalConfig();
        String projectpath = System.getProperty("user.dir");
        gc.setOutputDir(projectpath+"/src/main/java");
        gc.setAuthor("jojo");
        gc.setOpen(false);
        gc.setDateType(DateType.ONLY_DATE);
        gc.setSwagger2(true);
        gc.setIdType(IdType.AUTO);
        gc.setBaseColumnList(true);
        gc.setFileOverride(true);
        ag.setGlobalConfig(gc);

        //数据源配置
        DataSourceConfig dsc = new DataSourceConfig();
        dsc.setUrl("jdbc:mysql:///{}?useUnicode=true&characterEncoding=utf8&autoReconnect=true&allowMultiQueries=true");
        dsc.setDriverName("com.mysql.cj.jdbc.Driver");
        dsc.setUsername("root");
        dsc.setPassword("zhoukangkai666");
        ag.setDataSource(dsc);

        //包配置
        PackageConfig pc = new PackageConfig();
        pc.setParent("com.nus.zkk.bodhifiles_system");
        ag.setPackageInfo(pc);

        ag.execute();

    }
}
