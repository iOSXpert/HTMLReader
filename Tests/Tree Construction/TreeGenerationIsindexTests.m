// This file was autogenerated from Tests/html5lib/tree-construction/isindex.dat

#import <XCTest/XCTest.h>
#import "HTMLTreeConstructionTestUtilities.h"

@interface TreeGenerationIsindexTests : XCTestCase

@end

@implementation TreeGenerationIsindexTests

- (void)test000
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<isindex>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <form>\n|       <hr>\n|       <label>\n|         \"This is a searchable index. Enter search keywords: \"\n|         <input>\n|           name=\"isindex\"\n|       <hr>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test001
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<isindex name=\"A\" action=\"B\" prompt=\"C\" foo=\"D\">"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <form>\n|       action=\"B\"\n|       <hr>\n|       <label>\n|         \"C\"\n|         <input>\n|           foo=\"D\"\n|           name=\"isindex\"\n|       <hr>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test002
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<form><isindex>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <form>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

@end
