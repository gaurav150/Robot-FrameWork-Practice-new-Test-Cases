*** Settings ***
Library     SeleniumLibrary
# Resource    ../Resources/home_locators.robot
Resource    ../Resources/shop_page_locators.robot


*** Variables ***
${width_a}      100


*** Keywords ***
# Set Slider To
#    [Arguments]    ${SliderPointValue}
#    ${slider}=    Get WebElement    ${RIGHT_Slider_loc}
#    ${max_value}=    Get Element Attribute    ${MAX_VALUE_SLIDER_LOCATOR}    value
#    ${min_value}=    Get Element Attribute    ${MIN_VALUE_SLIDER_LOCATOR}    value
#    ${range}=    Evaluate    int(${max_value}) - int(${min_value})
#    Log    value of range:${range}    console=true
#    ${width_str}=    Get Element Attribute    ${SLIDER_WIDTH_LOCATOR}    style
#    ${width_n}=    Evaluate    '${width_str}'.split('width: ')[1].strip('%;')
#    ${width}=    Convert To Number    ${width_n}    2
#    Log    ${width}    console=true
#    ${offset}=    Evaluate    int((((${SliderPointValue} - int(${max_value})) / ${range}) * ${width}) -14)
#    Log    Value of Offset:${offset}    console=true
##    Drag And Drop By Offset    ${RIGHT_Slider_loc}    ${offset}    0
#    Drag And Drop By Offset    ${Right_Side_Slider_Locator}    ${offset}    0
#    Sleep    10s

Set Slider To
    [Arguments]    ${SliderPointValue}
    ${slider}=    Get WebElement    ${RIGHT_Slider_loc}
    ${max_value}=    Get Element Attribute    ${MAX_VALUE_SLIDER_LOCATOR}    value
    ${min_value}=    Get Element Attribute    ${MIN_VALUE_SLIDER_LOCATOR}    value
    ${range}=    Evaluate    int(${max_value}) - int(${min_value})
    Log    value of range:${range}    console=true
    ${width_str}=    Get Element Attribute    ${SLIDER_WIDTH_LOCATOR}    style
    ${width_n}=    Evaluate    '${width_str}'.split('width: ')[1].strip('%;')
    ${width}=    Convert To Number    ${width_n}    2
    Log    ${width}    console=true
    ${offset}=    Evaluate    float((((${SliderPointValue} - int(${min_value})) / ${range}))*100)
    ${x}=    Convert To Number    ${offset}    2
    Log    Value of Offset:${x}    console=true
    RETURN    ${x}

Click On Filter Button
    Scroll Element Into View    ${FILTER_BUTTON}
    Wait Until Element Is Visible    ${FILTER_BUTTON}    30s
    Click Element    ${FILTER_BUTTON}
    Capture Page Screenshot    filter{index}.png

Set Slider Handle Right To Percentage
    [Arguments]    ${percentage}
    ${js}=    Catenate
    ...    const sliderHandle = document.querySelectorAll('.ui-slider-handle')[1];
    ...    sliderHandle.style.left = '${percentage}%';
    ...    sliderHandle.dispatchEvent(new MouseEvent('mousedown', { bubbles: true }));
    ...    sliderHandle.dispatchEvent(new MouseEvent('mouseup', { bubbles: true }));
    ...    sliderHandle.dispatchEvent(new Event('input', { bubbles: true }));
    ...    sliderHandle.dispatchEvent(new Event('change', { bubbles: true }));
    Execute JavaScript    ${js}
