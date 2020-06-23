﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TestingHTML.aspx.cs" Inherits="MentorAppFinal.TestingHTML" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
    <!--
    @import url("https://fonts.googleapis.com/css?family=Poppins");
    @import url("https://fonts.googleapis.com/css?family=Arial");

    //
    -->
</style>
<style type="text/css">
    <!--
    .ddr-page-wrapper * {
        box-sizing: border-box;
    }

    .ddr-page-wrapper {
        position: relative;
        padding: 0px;
        margin: 0px;
        font-family: sans-serif;
        font-size: 16px;
    }

    .ddr-page-wrapper .ddr-page {
        position: relative;
    }

    .ddr-page-wrapper .ddr-page .ddr-page-section-pre-content::after,
    .ddr-page-wrapper .ddr-page .ddr-page-section-pre-content::before,
    .ddr-page-wrapper .ddr-page>div::after,
    .ddr-page-wrapper .ddr-page>div::before {
        content: "";
        display: table;
        clear: both;
    }

    .ddr-page-wrapper div,
    .ddr-page-wrapper h1,
    .ddr-page-wrapper h2,
    .ddr-page-wrapper h3,
    .ddr-page-wrapper h4,
    .ddr-page-wrapper h5,
    .ddr-page-wrapper h6,
    .ddr-page-wrapper p,
    .ddr-page-wrapper span {
        line-height: normal;
    }

    .ddr-page-row,
    .ddr-page-section-wrapper .ddr-page-section {
        position: relative;
        box-sizing: border-box;
    }

    .ddr-page-row {
        display: flex;
        width: 100%;
    }

    .ddr-page-row__wrap {
        flex-wrap: wrap;
    }

    .ddr-page-row__wrap .ddr-page-column__wrap {
        width: 100% !important;
    }

    .ddr-page-row__wrap-reverse {
        flex-wrap: wrap-reverse;
    }

    .ddr-page-row__wrap-reverse .ddr-page-column__wrap-reverse {
        width: 100% !important;
    }

    .ddr-page-column {
        display: flex;
        flex-wrap: wrap;
        box-sizing: border-box;
        position: relative;
        align-content: flex-start;
    }

    .ddr-page-widget {
        width: 100%;
        position: relative;
        overflow: hidden;
    }

    .dashed-border {
        border: 1px dashed rgb(135, 135, 135);
    }

    .headline-edit-wrapper {
        cursor: text;
    }

    .section-slider .ddr-page-section-widget-drop-suggestion-wrapper {
        padding-bottom: 7px;
    }

    .ddr-page-widget__sections-slider .toolbox-controls {
        justify-content: flex-start !important;
    }

    .ddr-widget-toolbox--section-slider .toolbox-controls .ddr-widget-toolbox__sub-tool--duplicate,
    .ddr-widget-toolbox--section-slider .toolbox-controls .ddr-widget-toolbox__tool--duplicate,
    .ddr-widget-toolbox--section-slider .toolbox-controls .ddr-widget-toolbox__tool--move,
    .ddr-widget-toolbox--section-slider .toolbox-controls .ddr-widget-toolbox__tool--settings {
        background-color: rgb(226, 118, 37);
    }

    .ddr-widget-toolbox--section-slider .toolbox-controls .ddr-widget-toolbox__tool--delete {
        background-color: rgb(72, 72, 72);
    }

    .ddr-widget-toolbox--section-slider .toolbox-controls .ddr-widget-toolbox__tool.ddr-widget-toolbox__tool--delete:hover {
        background-color: rgb(58, 65, 74);
    }

    .ddr-widget-toolbox--section-slider .toolbox-controls .ddr-widget-toolbox__tool:hover {
        background-color: rgb(239, 56, 27);
    }

    .ddr-page-widget-overlay-wrapper:hover .ddr-widget-toolbox--section-slider {
        border: 2px solid rgb(226, 118, 37) !important;
    }

    .ddr-widget-toolbox--active.ddr-widget-toolbox--section-slider {
        border: 2px solid rgb(226, 118, 37);
    }

    .ddr-widget {
        background-color: transparent;
        background-image: none;
        top: auto;
        bottom: auto;
        left: auto;
        right: auto;
        height: auto;
        width: auto;
        max-height: none;
        max-width: none;
        min-height: 0px;
        min-width: 0px;
        padding: 0px;
        margin: 0px;
        overflow: hidden;
    }

    .ddr-widget__rich-text {
        position: relative;
        cursor: auto;
        overflow-wrap: break-word;
        overflow: hidden;
    }

    .ddr-widget__headline {
        position: relative;
        word-break: break-word;
    }

    .ddr-widget__spacer {
        position: relative;
        overflow: hidden;
    }

    @media (min-width: 1281px) {
        .ddr-page-row__wrap--max {
            flex-wrap: wrap;
        }

        .ddr-page-row__wrap--max .ddr-page-column__wrap--max {
            width: 100% !important;
        }

        .ddr-page-row__wrap-reverse--max {
            flex-wrap: wrap-reverse;
        }

        .ddr-page-row__wrap-reverse--max .ddr-page-column__wrap-reverse--max {
            width: 100% !important;
        }

        .ddr-page-column__hide--max,
        .ddr-page-widget__hide--max {
            display: none;
        }
    }

    @media (max-width: 1280px) and (min-width: 1025px) {
        .ddr-page-row__wrap--1280 {
            flex-wrap: wrap;
        }

        .ddr-page-row__wrap--1280 .ddr-page-column__wrap--1280 {
            width: 100% !important;
        }

        .ddr-page-row__wrap-reverse--1280 {
            flex-wrap: wrap-reverse;
        }

        .ddr-page-row__wrap-reverse--1280 .ddr-page-column__wrap-reverse--1280 {
            width: 100% !important;
        }

        .ddr-page-column__hide--1280,
        .ddr-page-widget__hide--1280 {
            display: none;
        }
    }

    @media (max-width: 1024px) and (min-width: 769px) {
        .ddr-page-row__wrap--1024 {
            flex-wrap: wrap;
        }

        .ddr-page-row__wrap--1024 .ddr-page-column__wrap--1024 {
            width: 100% !important;
        }

        .ddr-page-row__wrap-reverse--1024 {
            flex-wrap: wrap-reverse;
        }

        .ddr-page-row__wrap-reverse--1024 .ddr-page-column__wrap-reverse--1024 {
            width: 100% !important;
        }

        .ddr-page-column__hide--1024,
        .ddr-page-widget__hide--1024 {
            display: none;
        }
    }

    @media (max-width: 768px) and (min-width: 481px) {
        .ddr-page-row__wrap--768 {
            flex-wrap: wrap;
        }

        .ddr-page-row__wrap--768 .ddr-page-column__wrap--768 {
            width: 100% !important;
        }

        .ddr-page-row__wrap-reverse--768 {
            flex-wrap: wrap-reverse;
        }

        .ddr-page-row__wrap-reverse--768 .ddr-page-column__wrap-reverse--768 {
            width: 100% !important;
        }

        .ddr-page-column__hide--768,
        .ddr-page-widget__hide--768 {
            display: none;
        }
    }

    @media (max-width: 480px) and (min-width: 321px) {
        .ddr-page-row__wrap--480 {
            flex-wrap: wrap;
        }

        .ddr-page-row__wrap--480 .ddr-page-column__wrap--480 {
            width: 100% !important;
        }

        .ddr-page-row__wrap-reverse--480 {
            flex-wrap: wrap-reverse;
        }

        .ddr-page-row__wrap-reverse--480 .ddr-page-column__wrap-reverse--480 {
            width: 100% !important;
        }

        .ddr-page-column__hide--480,
        .ddr-page-widget__hide--480 {
            display: none;
        }
    }

    @media (max-width: 320px) and (min-width: 0px) {
        .ddr-page-row__wrap--320 {
            flex-wrap: wrap;
        }

        .ddr-page-row__wrap--320 .ddr-page-column__wrap--320 {
            width: 100% !important;
        }

        .ddr-page-row__wrap-reverse--320 {
            flex-wrap: wrap-reverse;
        }

        .ddr-page-row__wrap-reverse--320 .ddr-page-column__wrap-reverse--320 {
            width: 100% !important;
        }

        .ddr-page-column__hide--320,
        .ddr-page-widget__hide--320 {
            display: none;
        }
    }

    [data-ddr-page-widget-additional-css-id="2eaafbb3f2"] {
        font-family: 'Poppins', sans-serif;
    }

    undefined[data-ddr-page-widget-additional-css-id="b8dec61ced"] {
        font-family: 'Poppins', sans-serif;
    }

    undefined[data-ddr-page-widget-additional-css-id="ed5c7446f4"] {}

    //
    -->
</style>
<script type="text/javascript">
    <!--
    (function () {
        var head = document.getElementsByTagName('head').item(0),
            url = 'https://app.dragdropr.com/components/dependency-manager.js?version=1.0.8';

        for (var i = 0; i < head.children.length; i++) {
            if (head.children.item(i).tagName === 'SCRIPT' && head.children.item(i).src.indexOf(url) !== -1) {
                return;
            }
        }

        var node = document.createElement('script');
        node.async = 1;
        node.src = url;
        head.insertBefore(node, null);
    })();

    //
    -->
</script>
<div class="ddr-page-wrapper" data-ddr-page-id="04538efe-b4de-11ea-9ef4-0242ac140009">
    <div class="ddr-page">
        <div id="ddr-41244cb83f" class="ddr-page-section-wrapper ddr-page-section-wrapper-0">
            <div class="ddr-page-section-pre-content ddr-page-section-pre-content-0">
                <div class="ddr-page-section ddr-page-section-0">
                    <div class="ddr-page-row ddr-page-row-0 ddr-page-row__wrap--320 ddr-page-row__wrap--480 ddr-page-row__wrap--768">
                        <div class="ddr-page-column ddr-page-column-0 ddr-page-column__wrap--320 ddr-page-column__wrap--480 ddr-page-column__wrap--768 " style="width: 100%;">
                            <div id="ddr-886f99b30a" class="ddr-page-widget ddr-page-widget__headline ddr-page-widget-0 " data-ddr-page-widget-additional-css-id="2eaafbb3f2">
                                <div class="ddr-widget" style="background-color: rgb(143, 167, 191);">
                                    <h1 class="ddr-widget__headline" style="margin: 30px; text-align: center; line-height: 120px; color: rgb(255, 255, 255); font-weight: 900; border-color: rgb(255, 255, 255); border-style: solid; border-width: 0px;">Contact Us</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="ddr-ef74856301" class="ddr-page-section-wrapper ddr-page-section-wrapper-1">
            <div class="ddr-page-section-pre-content ddr-page-section-pre-content-1">
                <div class="ddr-page-section ddr-page-section-1">
                    <div class="ddr-page-row ddr-page-row-0 ddr-page-row__wrap--320 ddr-page-row__wrap--480 ddr-page-row__wrap--768">
                        <div class="ddr-page-column ddr-page-column-0 ddr-page-column__wrap--320 ddr-page-column__wrap--480 ddr-page-column__wrap--768 " style="width: 100%;">
                            <div id="ddr-4ff6ad7bdd" class="ddr-page-widget ddr-page-widget__rich-text ddr-page-widget-0 " data-ddr-page-widget-additional-css-id="b8dec61ced">
                                <div class="ddr-widget">
                                    <div id="ddr-rich-text-1000" class="ddr-widget__rich-text" style="margin: 30px; border-color: rgb(255, 255, 255); border-style: solid; border-width: 0px;">
                                        <h4 style="text-align: center;">Questions about our mentorship program? Contact our Director of Internal Affairs:</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ddr-page-row ddr-page-row-1 ddr-page-row__wrap--320 ddr-page-row__wrap--480 ddr-page-row__wrap--768">
                        <div class="ddr-page-column ddr-page-column-0 ddr-page-column__wrap--320 ddr-page-column__wrap--480 ddr-page-column__wrap--768 " style="width: 25%;">
                            <div id="ddr-d9ddea418f" class="ddr-page-widget ddr-page-widget__spacer ddr-page-widget-0 ">
                                <div class="ddr-widget">
                                    <div class="ddr-widget__spacer" style="height: 100px;"></div>
                                </div>
                            </div>
                        </div>
                        <div class="ddr-page-column ddr-page-column-1 ddr-page-column__wrap--320 ddr-page-column__wrap--480 ddr-page-column__wrap--768 " style="width: 50%;">
                            <div id="ddr-c1dd6383a8" class="ddr-page-widget ddr-page-widget__rich-text ddr-page-widget-0 " data-ddr-page-widget-additional-css-id="ed5c7446f4">
                                <div class="ddr-widget" style="background-position: center center; background-size: 30% 1%; background-color: rgb(243, 243, 243);">
                                    <div id="ddr-rich-text-1110" class="ddr-widget__rich-text" style="margin: 30px; padding: 10px; border-style: solid; border-width: 3px; border-color: rgb(255, 255, 255);">
                                        <div>
                                            <p style="text-align: left;"><span style="font-family: arial, sans-serif;"><strong>Name:</strong>&nbsp;Yanni Mihalopoulos</span></p>
                                            <p style="text-align: left;"><span style="font-family: arial, sans-serif;"><strong>Email:</strong><a href="mailto:yanni-mihalopoulos@uiowa.edu">yanni-mihalopoulos@uiowa.edu</a></span></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ddr-page-column ddr-page-column-2 ddr-page-column__wrap--320 ddr-page-column__wrap--480 ddr-page-column__wrap--768 " style="width: 25%;">
                            <div id="ddr-4feaa7b2a1" class="ddr-page-widget ddr-page-widget__spacer ddr-page-widget-0 ">
                                <div class="ddr-widget">
                                    <div class="ddr-widget__spacer" style="height: 100px;"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>
