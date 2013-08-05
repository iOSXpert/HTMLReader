// This file was autogenerated from Tests/html5lib/tree-construction/tests14.dat

#import <XCTest/XCTest.h>
#import "HTMLTreeConstructionTestUtilities.h"

@interface TreeGenerationTests14Tests : XCTestCase

@end

@implementation TreeGenerationTests14Tests

- (void)test000
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><html><body><xyz:abc></xyz:abc>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <xyz:abc>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test001
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><html><body><xyz:abc></xyz:abc><span></span>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <xyz:abc>\n|     <span>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test002
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><html><html abc:def=gh><xyz:abc></xyz:abc>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   abc:def=\"gh\"\n|   <head>\n|   <body>\n|     <xyz:abc>\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test003
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><html xml:lang=bar><html xml:lang=foo>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   xml:lang=\"bar\"\n|   <head>\n|   <body>\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test004
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><html 123=456>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   123=\"456\"\n|   <head>\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test005
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><html 123=456><html 789=012>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   123=\"456\"\n|   789=\"012\"\n|   <head>\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test006
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><html><body 789=012>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     789=\"012\"\n");
    HTMLAssertParserState(parser, 0, fixture);
}

@end
