//
//  NSArray+FirstLetterArray.h
//  LetterDescent
//
//  Created by Mr.Yang on 13-8-20.
//  Copyright (c) 2013年 Hunter. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (HTLetter)

/**
 *	通过需要按【首字母分类】的 【姓名数组】 调用此函数
 *
 *	@return	A：以a打头的姓名或者单词
            B：以b打头的姓名或者单词
 */

- (NSDictionary *)sortedDictionary; // k:v 首字母－名字数组

/**
 *  Add by fallenink.
 *
 *  功能与sortedArrayUsingFirstLetter类似
 
 *  但是支持Array中时任意对象，需要提供Key
 */
- (NSDictionary *)sortedDictionaryWithPropertyKey:(NSString *)propertyKey;

@end

#pragma mark - 拼音匹配

@interface NSArray ( PinyinMatch )

/**
 *  参考：http://blog.csdn.net/nanman/article/details/6062764
 
 */
- (NSArray *)filteredArrayWithSearchingString:(NSString *)search;

@end
