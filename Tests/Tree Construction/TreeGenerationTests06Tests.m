// This file was autogenerated from Tests/html5lib/tree-construction/tests6.dat

#import <XCTest/XCTest.h>
#import "HTMLTreeConstructionTestUtilities.h"

@interface TreeGenerationTests06Tests : XCTestCase

@end

@implementation TreeGenerationTests06Tests

- (void)test000
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html></head> <head>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   \" \"\n|   <body>\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test001
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><form><div></form><div>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <form>\n|       <div>\n|         <div>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test002
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><title>&amp;</title>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <title>\n|       \"&\"\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test003
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><title><!--&amp;--></title>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <title>\n|       \"<!--&-->\"\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test004
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE >\n| <html>\n|   <head>\n|   <body>\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test005
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!---x"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!-- -x -->\n| <html>\n|   <head>\n|   <body>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test006
{
    HTMLElementNode *context = [[HTMLElementNode alloc] initWithTagName:@"div"];
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<body>\n<div>"
                                                    context:context];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| \"\n\"\n| <div>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test007
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<frameset></frameset>\nfoo"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <frameset>\n|   \"\n\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test008
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<frameset></frameset>\n<noframes>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <frameset>\n|   \"\n\"\n|   <noframes>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test009
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<frameset></frameset>\n<div>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <frameset>\n|   \"\n\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test010
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<frameset></frameset>\n</html>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <frameset>\n|   \"\n\"\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test011
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<frameset></frameset>\n</div>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <frameset>\n|   \"\n\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test012
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<form><form>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <form>\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test013
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<button><button>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <button>\n|     <button>\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test014
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><tr><td></th>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test015
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><caption><td>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n|       <tbody>\n|         <tr>\n|           <td>\n");
    HTMLAssertParserState(parser, 4, fixture);
}

- (void)test016
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><caption><div>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n|         <div>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test017
{
    HTMLElementNode *context = [[HTMLElementNode alloc] initWithTagName:@"caption"];
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"</caption><div>"
                                                    context:context];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <div>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test018
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><caption><div></caption>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n|         <div>\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test019
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><caption></table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test020
{
    HTMLElementNode *context = [[HTMLElementNode alloc] initWithTagName:@"caption"];
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"</table><div>"
                                                    context:context];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <div>\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test021
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><caption></body></col></colgroup></html></tbody></td></tfoot></th></thead></tr>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n");
    HTMLAssertParserState(parser, 12, fixture);
}

- (void)test022
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><caption><div></div>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n|         <div>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test023
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><tr><td></body></caption></col></colgroup></html>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n");
    HTMLAssertParserState(parser, 7, fixture);
}

- (void)test024
{
    HTMLElementNode *context = [[HTMLElementNode alloc] initWithTagName:@"td"];
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"</table></tbody></tfoot></thead></tr><div>"
                                                    context:context];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <div>\n");
    HTMLAssertParserState(parser, 6, fixture);
}

- (void)test025
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><colgroup>foo"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     \"foo\"\n|     <table>\n|       <colgroup>\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test026
{
    HTMLElementNode *context = [[HTMLElementNode alloc] initWithTagName:@"colgroup"];
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"foo<col>"
                                                    context:context];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <col>\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test027
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><colgroup></col>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <colgroup>\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test028
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<frameset><div>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <frameset>\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test029
{
    HTMLElementNode *context = [[HTMLElementNode alloc] initWithTagName:@"frameset"];
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"</frameset><frame>"
                                                    context:context];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <frame>\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test030
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<frameset></div>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <frameset>\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test031
{
    HTMLElementNode *context = [[HTMLElementNode alloc] initWithTagName:@"body"];
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"</body><div>"
                                                    context:context];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <div>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test032
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><tr><div>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <div>\n|     <table>\n|       <tbody>\n|         <tr>\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test033
{
    HTMLElementNode *context = [[HTMLElementNode alloc] initWithTagName:@"tr"];
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"</tr><td>"
                                                    context:context];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <td>\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test034
{
    HTMLElementNode *context = [[HTMLElementNode alloc] initWithTagName:@"tr"];
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"</tbody></tfoot></thead><td>"
                                                    context:context];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <td>\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test035
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><tr><div><td>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <div>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n");
    HTMLAssertParserState(parser, 4, fixture);
}

- (void)test036
{
    HTMLElementNode *context = [[HTMLElementNode alloc] initWithTagName:@"tbody"];
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<caption><col><colgroup><tbody><tfoot><thead><tr>"
                                                    context:context];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <tr>\n");
    HTMLAssertParserState(parser, 7, fixture);
}

- (void)test037
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><tbody></thead>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test038
{
    HTMLElementNode *context = [[HTMLElementNode alloc] initWithTagName:@"tbody"];
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"</table><tr>"
                                                    context:context];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <tr>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test039
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><tbody></body></caption></col></colgroup></html></td></th></tr>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n");
    HTMLAssertParserState(parser, 10, fixture);
}

- (void)test040
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><tbody></div>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n");
    HTMLAssertParserState(parser, 4, fixture);
}

- (void)test041
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <table>\n|     <table>\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test042
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table></body></caption></col></colgroup></html></tbody></td></tfoot></th></thead></tr>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <table>\n");
    HTMLAssertParserState(parser, 13, fixture);
}

- (void)test043
{
    HTMLElementNode *context = [[HTMLElementNode alloc] initWithTagName:@"table"];
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"</table><tr>"
                                                    context:context];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <tbody>\n|   <tr>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test044
{
    HTMLElementNode *context = [[HTMLElementNode alloc] initWithTagName:@"html"];
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<body></body></html>"
                                                    context:context];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <head>\n| <body>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test045
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<html><frameset></frameset></html> "];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <frameset>\n|   \" \"\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test046
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01//EN\"><html></html>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html \"-//W3C//DTD HTML 4.01//EN\" \"\">\n| <html>\n|   <head>\n|   <body>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test047
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<param><frameset></frameset>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <frameset>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test048
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<source><frameset></frameset>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <frameset>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test049
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<track><frameset></frameset>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <frameset>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test050
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"</html><frameset></frameset>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <frameset>\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test051
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"</body><frameset></frameset>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <frameset>\n");
    HTMLAssertParserState(parser, 3, fixture);
}

@end
