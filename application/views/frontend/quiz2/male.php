
        <div class="subheader" style="display:block;">
            <div class="progress-bar">
                <div class="progress"></div>
            </div>
        </div>
        <div class="container">
            <div id="step-1" class="step active" data-mode="question" data-type="familiar_question" data-answer="single">
                <div class="step-number"><span>2/9</span></div>
                <div class="question">
                    How familiar are you with the Keto diet?
                </div>
                <div class="question-description">Please select one option</div>
                <div class="fancy-radio-holder">
                    <input type="hidden" name="answer" value="0" />
                    <div class="fancy-radio btn-single" data-answer="3">
                        Expert
                        <div class="status"></div>
                        <div class="status-icon">-</div>
                    </div>
                    <div class="fancy-radio btn-single" data-answer="2">
                        I&#039;ve heard a thing or two
                        <div class="status"></div>
                        <div class="status-icon">-</div>
                    </div>
                    <div class="fancy-radio btn-single" data-answer="1">
                        Beginner
                        <div class="status"></div>
                        <div class="status-icon">-</div>
                    </div>
                </div>
                <div class="error-msg"></div>
            </div>
            <div id="step-2" class="step info-slide" style="display:none;" data-mode="question" data-answer="none">
                <div class="step-number"><span>3/9</span></div>
                <div class="question">
                    What is Keto diet?
                </div>
                <p>
                    The ketogenic diet is a very low-carb, high-fat diet. To achieve positive results, this diet has to be very low in carbohydrates, high in dietary fat and include a moderate amount of proteins. This reduction in carbs puts your body into a metabolic state called ketosis.
                </p>
                <h3 class="question">Benefits of keto diet:</h3>
                <ul>
                    <li>
                        <i class="la la-check-circle-o"></i>
                        Weight loss
                    </li>
                    <li>
                        <i class="la la-check-circle-o"></i>
                        Reduced blood pressure
                    </li>
                    <li>
                        <i class="la la-check-circle-o"></i>
                        Slower ageing process
                    </li>
                    <li>
                        <i class="la la-check-circle-o"></i>
                        Improved sleep and mood
                    </li>
                    <li>
                        <i class="la la-check-circle-o"></i>
                        Increased energy efficiency
                    </li>
                </ul>
                <button class="btn btn-primary btn-next-step">Got it</button>
            </div>
            <div id="step-3" class="step" style="display:none;" data-type="first_question" data-mode="question" data-answer="single">
                <div class="step-number"><span>4/9</span></div>
                <div class="question">
                    How much time do you have for meal preparation each day?
                </div>
                <div class="question-description">Please select one option</div>
                <div class="fancy-radio-holder">
                    <input type="hidden" name="answer" value="0" />
                    <div class="fancy-radio btn-single" data-answer="1">
                        Up to 30 minutes
                        <div class="status"></div>
                        <div class="status-icon">-</div>
                    </div>
                    <div class="fancy-radio btn-single" data-answer="2">
                        Up to 1 hour
                        <div class="status"></div>
                        <div class="status-icon">-</div>
                    </div>
                    <div class="fancy-radio btn-single" data-anser="3">
                        More than 1 hour
                        <div class="status"></div>
                        <div class="status-icon">-</div>
                    </div>
                </div>
                <div class="error-msg"></div>
            </div>

            <div class="step" id="step-4" data-type="meat_question" style="display:none;" data-mode="question" data-answer="multiple">
                <div class="step-number"><span>5/9</span></div>
                <div class="question">
                    Meat
                </div>
                <div class="question-description">
                    Please UNCHECK the meat you do not eat OR if Vegetarian.
                </div>
                <div class="fancy-checkbox-holder">
                    <input type="hidden" name="answer" value="0" />
                    <div class="fancy-radio with-icon active" data-answer="1">
                        <div class="icon">
                            <i class="chicken"></i>
                        </div>
                        Chicken
                        <div class="status"></div>
                        <div class="status-icon">+</div> 
                    </div>
                    <div class="fancy-radio with-icon active"  data-answer="2">
                        <div class="icon">
                            <i class="pork"></i>
                        </div>
                        Pork
                        <div class="status"></div>
                        <div class="status-icon">+</div>
                    </div>
                    <div class="fancy-radio with-icon active" data-answer="3">
                        <div class="icon">
                            <i class="beef"></i>
                        </div>
                        Beef
                        <div class="status"></div>
                        <div class="status-icon">+</div>
                    </div>
                    <div class="fancy-radio with-icon active" data-answer="4">
                        <div class="icon">
                           <i class="fish"></i>
                       </div>
                       Fish
                       <div class="status"></div>
                       <div class="status-icon">+</div>
                   </div>
                   <div class="fancy-radio with-icon active" data-answer="5">
                    <div class="icon">
                        <i class="lamb"></i>
                    </div>
                    Lamb
                    <div class="status"></div>
                    <div class="status-icon">+</div>
                </div>
                <div class="fancy-radio with-icon active" data-answer="6">
                    <div class="icon">
                        <i class="veal"></i>
                    </div>
                    Bacon
                    <div class="status"></div>
                    <div class="status-icon">+</div>
                </div>
                <div class="fancy-radio with-icon active" data-answer="7">
                    <div class="icon">
                        <i class="notveg"></i>
                    </div>
                    I am vegetarian
                    <div class="status"></div>
                    <div class="status-icon">+</div>
                </div>
            </div>
            <div class="error-msg"></div>
            <button class="btn btn-primary btn-next-step">Next</button>
        </div>

        <div class="step" id="step-5" data-type="products_question" style="display:none;" data-mode="question" data-answer="multiple">
            <div class="step-number"><span>6/9</span></div>
            <div class="question">
                Products
            </div>
            <div class="question-description">
                Please UNCHECK the Products you do not eat in your diet.
            </div>
            <div class="fancy-checkbox-holder ">
                <input type="hidden" name="answer" value="0" />
                <div class="fancy-radio with-icon active" data-answer="1">
                    <div class="icon">
                        <i class="mushroom"></i>
                    </div>
                    Mushrooms
                    <div class="status"></div>
                    <div class="status-icon">+</div>
                </div>
                <div class="fancy-radio with-icon active" data-answer="3">
                    <div class="icon">
                        <i class="egg"></i>
                    </div>
                    Eggs
                    <div class="status"></div>
                    <div class="status-icon">+</div>
                </div>
                <div class="fancy-radio with-icon active" data-answer="4">
                    <div class="icon">
                        <i class="nuts"></i>
                    </div>
                    Nuts
                    <div class="status"></div>
                    <div class="status-icon">+</div>
                </div>
                <div class="fancy-radio with-icon active" data-answer="5">
                    <div class="icon">
                        <i class="cheese"></i>
                    </div>
                    Cheese
                    <div class="status"></div>
                    <div class="status-icon">+</div>
                </div>
                <div class="fancy-radio with-icon active" data-answer="6">
                    <div class="icon">
                        <i class="butter"></i>
                    </div>
                    Butter
                    <div class="status"></div>
                    <div class="status-icon">+</div>
                </div>
                <div class="fancy-radio with-icon active" data-answer="7">
                    <div class="icon">
                        <i class="milk"></i>
                    </div>
                    Milk
                    <div class="status"></div>
                    <div class="status-icon">+</div>
                </div>
                <div class="fancy-radio with-icon active" data-answer="8">
                    <div class="icon">
                        <i class="avocado"></i>
                    </div>
                    Avocados
                    <div class="status"></div>
                    <div class="status-icon">+</div>
                </div>
                <div class="fancy-radio with-icon active" data-answer="9">
                    <div class="icon">
                        <i class="seafood"></i>
                    </div>
                    Seafood
                    <div class="status"></div>
                    <div class="status-icon">+</div>
                </div>
                <div class="fancy-radio with-icon active" data-answer="10">
                    <div class="icon">
                        <i class="coconut"></i>
                    </div>
                    Coconut
                    <div class="status"></div>
                    <div class="status-icon">+</div>
                </div>
            </div>
            <div class="error-msg"></div>
            <button class="btn btn-primary btn-next-step">Next</button>
        </div>
        <div id="step-6" class="step" data-type="howactive_question" style="display:none;" data-mode="question" data-answer="single">
            <div class="step-number"><span>7/9</span></div>
            <div class="question">
                How physically active are you?
            </div>
            <div class="question-description">
                Please select ONE option.
            </div>
            <div class="fancy-radio-holder">
                <input type="hidden" name="answer" value="0" />
                <div class="fancy-radio btn-single" data-answer="3">
                    Workout hero (3-5 workouts / week)
                    <div class="status"></div>
                    <div class="status-icon">-</div>
                </div>
                <div class="fancy-radio btn-single" data-answer="2">
                    Light-mode (1-2 workouts /week)
                    <div class="status"></div>
                    <div class="status-icon">-</div>
                </div>
                <div class="fancy-radio btn-single" data-answer="1">
                    A newbie (Just starting)
                    <div class="status"></div>
                    <div class="status-icon">-</div>
                </div>
            </div>
            <div class="error-msg"></div>
        </div>
        <div id="step-7" class="step" style="display:none;" data-type="willing_question" data-mode="question" data-answer="single">
            <div class="step-number"><span>8/9</span></div>
            <div class="question">
                How willing are you to lose weight?
            </div>
            <div class="question-description">
                Please select ONE option.
            </div>
            <div class="fancy-radio-holder">
                <input type="hidden" name="answer" value="0" />
                <div class="fancy-radio btn-single" data-answer="1">
                    I just want to try the Keto diet
                    <div class="status"></div>
                    <div class="status-icon">-</div>
                </div>
                <div class="fancy-radio btn-single" data-answer="2">
                    I want to try it and lose some weight
                    <div class="status"></div>
                    <div class="status-icon">-</div>
                </div>
                <div class="fancy-radio btn-single" data-answer="3">
                    I want to lose the maximum amount of weight
                    <div class="status"></div>
                    <div class="status-icon">-</div>
                </div>
            </div>
            <div class="error-msg"></div>
        </div>
        <div id="step-8" class="step" style="display:none;" data-type="units_question" data-mode="question">
            <div class="step-number"><span>9/9</span></div>
            <div class="units-toggler">
                <button class="btn " data-type="imperial">Imperial</button>
                <button class="btn  active " data-type="metric">Metric</button>
            </div>
            <div class="question">Measurements</div>
            <div class="input-holder">
                <input id="age-value" type="number" name="age" placeholder="Age" />
                <div class="units">years</div>
            </div>
            <div class="metric-height">
                <div class="input-holder">
                    <input id="metric-height-value" type="number" name="height" placeholder="Height" />
                    <div class="units height">cm</div>
                </div>
            </div>
            <div class="imperial-height row" style="display:none;">
                <div class="col-xs-6">
                    <div class="input-holder">
                        <input id="feet-value" type="number" name="height" placeholder="ft" />
                        <div class="units height">ft</div>
                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="input-holder">
                        <input id="inch-value" type="number" name="height" placeholder="in" />
                        <div class="units height">in</div>
                    </div>
                </div>
            </div>
            <div class="input-holder">
                <input id="weight-value" type="number" name="weight" placeholder="Weight (kg)" />
                <div class="units weight"> kg </div>
            </div>
            <div class="input-holder">
                <input id="targetWeight-value" type="number" name="target_weight" placeholder="Target weight (kg)" />
                <div class="units weight"> kg </div>
            </div>
            <div class="input-holder">
                <input id="email-value" type="email" name="email" placeholder="Email Address" />
                <div class="email-desc"><i class="fas fa-info-circle"></i>
                    We need your primary email to send your Personalized Keto Diet Plan.
                </div>
            </div>
            <div class="error-msg"></div>
            <button class="btn btn-primary btn-next-step">Show My Results</button>
        </div>

        <div class="col-md-12 text-center cm-loader py-5" style="display:none">
            <!--<div class="spinner-border m-5" role="status">
                <span class="sr-only">Loading...</span>
            </div>
            <h3>Please Wait</h3>-->
            <div class="loader"></div>
            <h3 class="py-5">Processing Your Personalized Keto Meal Plan</h3>
        </div>

    </div>
</div>
