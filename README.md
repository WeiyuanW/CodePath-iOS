# Pre-work - *Tip Calculator App*

**Quick tip** is a tip calculator application for iOS.

Submitted by: **Weiyuan Wu**

Time spent: **12** hours spent in total

## User Stories

The following **required** functionality is complete:

* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [X] User can select between tip percentages by tapping different values on the segmented control and the tip value is updated accordingly

The following **optional** features are implemented:

* [X] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [X] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [X] User can adjust party size with a stepper, and split bill automaticlly.
- [X] User can adjust tip percentage with a slider, and output will change accordingly.

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='http://g.recordit.co/68AdFIhFyt.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).


## Notes

Describe any challenges encountered while building the app.
1. I had implement the setting page, but userDefault method is not working for me, I can not carry the data from the setting page to main page.
2. I have found some old coding example about "Remembering the bill amount across app restarts" and "Using locale-specific currency and currency thousands separators." task. but I need to spend more time on understanging the method behind the code. and I relized that some of the coding format is changed in the past few years.

## License

    Copyright [2022] [Weiyuan Wu]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
