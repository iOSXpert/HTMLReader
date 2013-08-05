// This file was autogenerated from Tests/html5lib/tree-construction/tests17.dat

#import <XCTest/XCTest.h>
#import "HTMLTreeConstructionTestUtilities.h"

@interface TreeGenerationTests17Tests : XCTestCase

@end

@implementation TreeGenerationTests17Tests

- (void)test000
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><tbody><select><tr>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|     <table>\n|       <tbody>\n|         <tr>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test001
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><tr><select><td>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test002
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><tr><td><select><td>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <select>\n|           <td>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test003
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><tr><th><select><td>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <th>\n|             <select>\n|           <td>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test004
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><caption><select><tr>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n|         <select>\n|       <tbody>\n|         <tr>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test005
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><select><tr>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test006
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><select><td>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test007
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><select><th>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test008
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><select><tbody>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test009
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><select><thead>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test010
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><select><tfoot>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test011
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><select><caption>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test012
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><tr></table>a"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|     \"a\"\n");
    HTMLAssertParserState(parser, 0, fixture);
}

@end
