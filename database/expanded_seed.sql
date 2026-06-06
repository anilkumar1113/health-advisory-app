USE health_advisory;

-- ==========================================
-- NEW CATEGORIES
-- ==========================================
INSERT INTO categories (name, description, icon) VALUES
('Mental Health', 'Anxiety, depression, stress, and sleep disorders', '🧠'),
('Skin & Hair', 'Dermatological conditions and hair health', '🧴'),
('Eye Health', 'Vision problems and eye conditions', '👁️'),
('Women\'s Health', 'PCOS, menstrual health, and pregnancy nutrition', '🌸'),
('Children\'s Health', 'Common childhood illnesses and nutrition', '👶');

-- ==========================================
-- NEW CONDITIONS
-- ==========================================

-- Mental Health (category_id = 9)
INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(9, 'Anxiety Disorder', 'Persistent excessive worry and fear affecting daily life. Physical symptoms include rapid heartbeat, sweating, trembling, and difficulty concentrating. Affects 1 in 5 adults worldwide.', 'anxiety,worry,panic,nervousness,stress,fear,palpitations', '😰', 'moderate'),
(9, 'Depression', 'A mood disorder causing persistent feelings of sadness, hopelessness, and loss of interest in activities. Can affect sleep, appetite, energy, and concentration.', 'depression,sadness,hopelessness,fatigue,mood,serotonin,sleep', '😞', 'severe'),
(9, 'Insomnia', 'Difficulty falling asleep, staying asleep, or waking too early. Chronic insomnia affects daytime functioning, mood, and overall health.', 'insomnia,sleep,sleepless,wakeup,restless,melatonin', '😴', 'moderate'),
(9, 'Migraine', 'Severe recurring headaches often with nausea, light sensitivity, and visual disturbances. Can last 4-72 hours and significantly impact quality of life.', 'migraine,headache,nausea,light sensitivity,aura,throbbing', '🤯', 'severe');

-- Skin & Hair (category_id = 10)
INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(10, 'Acne', 'Skin condition where hair follicles become clogged with oil and dead skin cells. Causes pimples, blackheads, and whiteheads primarily on face, back, and chest.', 'acne,pimples,skin,blackheads,oily,breakout,hormonal', '😤', 'mild'),
(10, 'Eczema (Dermatitis)', 'Chronic inflammatory skin condition causing dry, itchy, red, and cracked skin. Triggered by allergens, stress, or environmental factors.', 'eczema,dermatitis,itchy,rash,dry skin,inflammation,allergy', '🔴', 'moderate'),
(10, 'Hair Loss (Alopecia)', 'Excessive hair shedding or thinning due to genetics, stress, nutritional deficiencies, or hormonal changes. Affects both men and women.', 'hair loss,alopecia,baldness,thinning,hair fall,biotin,dht', '💇', 'moderate'),
(10, 'Psoriasis', 'Autoimmune condition causing rapid skin cell buildup resulting in thick, red, scaly patches. Chronic with flare-ups and remissions.', 'psoriasis,scaly,autoimmune,skin patches,flaky,plaque', '🩹', 'moderate');

-- Eye Health (category_id = 11)
INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(11, 'Dry Eyes', 'Insufficient tear production or poor tear quality causing discomfort, burning, and blurred vision. Common with screen use and aging.', 'dry eyes,burning,tears,screen,blurred vision,eye strain', '👀', 'mild'),
(11, 'Glaucoma', 'Group of eye conditions damaging the optic nerve due to increased eye pressure. Leading cause of irreversible blindness if untreated.', 'glaucoma,eye pressure,optic nerve,vision loss,blindness', '🫣', 'severe');

-- Women's Health (category_id = 12)
INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(12, 'PCOS (Polycystic Ovary Syndrome)', 'Hormonal disorder causing irregular periods, excess androgen, and polycystic ovaries. Affects 1 in 10 women of reproductive age.', 'pcos,irregular periods,hormonal,ovary,acne,weight gain,fertility', '🌺', 'moderate'),
(12, 'Iron Deficiency in Pregnancy', 'Increased iron demand during pregnancy often leads to anemia. Critical for fetal development and maternal health.', 'pregnancy,anemia,iron,fetal,prenatal,hemoglobin,fatigue', '🤰', 'severe'),
(12, 'Menstrual Cramps (Dysmenorrhea)', 'Painful periods caused by uterine contractions. Can be accompanied by nausea, headache, and fatigue.', 'periods,cramps,menstrual,pain,dysmenorrhea,pms', '💫', 'moderate');

-- Children's Health (category_id = 13)
INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(13, 'Childhood Obesity', 'Excessive body fat in children affecting health. Linked to diabetes, asthma, joint problems, and low self-esteem.', 'obesity,overweight,child,bmi,diet,exercise,junk food', '🍔', 'moderate'),
(13, 'Chickenpox (Varicella)', 'Highly contagious viral infection causing itchy, blister-like rash. Common in children under 10. Usually mild but can have complications.', 'chickenpox,varicella,rash,blisters,itchy,contagious,fever', '🫧', 'mild');

-- More conditions in existing categories

-- Viral & Infections (category_id = 1)
INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(1, 'Malaria', 'Parasitic infection spread by Anopheles mosquito bites. Causes recurring high fever, chills, and sweating cycles. Can be fatal if untreated.', 'malaria,mosquito,fever,chills,parasite,plasmodium', '🦟', 'severe'),
(1, 'Food Poisoning', 'Illness from contaminated food or water. Causes vomiting, diarrhea, stomach cramps within hours of eating contaminated food.', 'food poisoning,vomiting,diarrhea,stomach,nausea,contaminated', '🤮', 'moderate'),
(1, 'Jaundice (Hepatitis)', 'Yellowing of skin and eyes due to liver inflammation. Caused by hepatitis viruses, alcohol, or toxins.', 'jaundice,hepatitis,liver,yellow,bilirubin,fatigue', '💛', 'severe');

-- Kidney Health (category_id = 2)
INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(2, 'Dialysis Care', 'Management of patients undergoing hemodialysis or peritoneal dialysis for end-stage kidney disease. Requires strict fluid and diet restrictions.', 'dialysis,hemodialysis,kidney failure,fluid restriction,phosphorus', '🏥', 'severe');

-- Diabetes (category_id = 3)
INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(3, 'Diabetic Neuropathy', 'Nerve damage caused by long-term high blood sugar. Causes tingling, numbness, and pain in feet and hands. Can lead to serious foot problems.', 'neuropathy,nerve,tingling,numbness,feet,diabetic,pain', '🦶', 'severe');

-- Heart & BP (category_id = 4)
INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(4, 'Heart Attack Recovery', 'Post-myocardial infarction care requiring cardiac rehabilitation, medication adherence, and lifestyle modifications.', 'heart attack,myocardial,cardiac,rehabilitation,stent,bypass,recovery', '💔', 'severe'),
(4, 'Low Blood Pressure (Hypotension)', 'Blood pressure below 90/60 mmHg causing dizziness, fainting, and fatigue. Can be due to dehydration, medication, or underlying conditions.', 'low bp,hypotension,dizziness,fainting,lightheaded', '📉', 'moderate');

-- Digestive Health (category_id = 5)
INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(5, 'Irritable Bowel Syndrome (IBS)', 'Chronic digestive disorder causing abdominal pain, bloating, gas, and alternating diarrhea/constipation. Triggered by stress and certain foods.', 'ibs,bowel,bloating,gas,constipation,diarrhea,stomach pain', '🫃', 'moderate'),
(5, 'Acid Reflux (GERD)', 'Chronic condition where stomach acid flows back into esophagus causing heartburn, chest pain, and difficulty swallowing.', 'gerd,acid reflux,heartburn,esophagus,chest pain,regurgitation', '🫁', 'moderate'),
(5, 'Constipation', 'Infrequent bowel movements or difficulty passing stools. Fewer than 3 bowel movements per week with hard, dry stools.', 'constipation,bowel,fiber,stool,laxative,bloating', '😣', 'mild');

-- Respiratory (category_id = 6)
INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(6, 'Bronchitis', 'Inflammation of bronchial tubes causing persistent cough with mucus, chest discomfort, and fatigue. Can be acute or chronic.', 'bronchitis,cough,mucus,chest,lungs,inflammation', '🫁', 'moderate'),
(6, 'Sinusitis', 'Inflammation of sinuses causing facial pain, nasal congestion, headache, and thick nasal discharge. Can be acute or chronic.', 'sinusitis,sinus,facial pain,congestion,headache,nasal', '🤧', 'mild'),
(6, 'Tuberculosis (TB)', 'Serious bacterial infection primarily affecting lungs. Causes persistent cough, blood in sputum, night sweats, and weight loss.', 'tb,tuberculosis,cough,lungs,bacterial,night sweats,weight loss', '🦠', 'severe');

-- Bone & Joint (category_id = 7)
INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(7, 'Gout', 'Form of arthritis caused by excess uric acid crystal deposits in joints. Causes sudden severe pain, redness, and swelling, often in the big toe.', 'gout,uric acid,joint,toe,swelling,purine,crystals', '🦶', 'moderate'),
(7, 'Back Pain (Lumbar)', 'Lower back pain caused by muscle strain, disc problems, or poor posture. One of the most common reasons for missed work.', 'back pain,lumbar,spine,disc,posture,muscle strain,sciatica', '🔙', 'moderate');

-- Nutritional Deficiency (category_id = 8)
INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(8, 'Vitamin B12 Deficiency', 'Low B12 levels causing fatigue, weakness, numbness, memory problems, and megaloblastic anemia. Common in vegetarians and elderly.', 'b12,vitamin,vegetarian,fatigue,numbness,megaloblastic,nerve', '💉', 'moderate'),
(8, 'Calcium Deficiency', 'Insufficient calcium causing weak bones, muscle cramps, numbness, and dental problems. Increases risk of osteoporosis.', 'calcium,bones,cramps,teeth,muscle,osteoporosis,dairy', '🦴', 'moderate'),
(8, 'Zinc Deficiency', 'Low zinc levels causing poor immunity, slow wound healing, hair loss, and taste/smell changes. Common in vegetarian diets.', 'zinc,immunity,wound healing,hair loss,taste,smell', '🧬', 'mild');

-- ==========================================
-- FOODS FOR NEW CONDITIONS
-- ==========================================

-- Anxiety (condition_id = 20)
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(20, 'Chamomile Tea', 'Brewed chamomile flowers', 'eat', 'Contains apigenin which binds to brain receptors reducing anxiety'),
(20, 'Dark Chocolate (70%+)', 'Small portion of dark chocolate', 'eat', 'Rich in magnesium and flavonoids that reduce cortisol levels'),
(20, 'Fatty Fish (Salmon)', 'Salmon, mackerel, sardines', 'eat', 'Omega-3 fatty acids reduce inflammation linked to anxiety'),
(20, 'Yogurt/Fermented Foods', 'Plain yogurt, kimchi, sauerkraut', 'eat', 'Gut-brain connection: probiotics reduce anxiety symptoms'),
(20, 'Almonds', 'Raw or soaked almonds', 'eat', 'Rich in magnesium and Vitamin E, calms nervous system'),
(20, 'Turmeric', 'In food or golden milk', 'eat', 'Curcumin boosts serotonin and dopamine levels'),
(20, 'Blueberries', 'Fresh or frozen blueberries', 'eat', 'Antioxidants reduce oxidative stress linked to anxiety'),
(20, 'Caffeine (excess)', 'More than 2 cups coffee/day', 'avoid', 'Stimulates fight-or-flight response, worsens anxiety and panic'),
(20, 'Alcohol', 'Beer, wine, spirits', 'avoid', 'Initial relaxation followed by rebound anxiety and disrupted sleep'),
(20, 'Sugar (excess)', 'Candy, pastries, sodas', 'avoid', 'Blood sugar spikes and crashes trigger anxiety symptoms'),
(20, 'Processed Foods', 'Fast food, packaged snacks', 'avoid', 'Artificial additives and preservatives worsen anxiety');

-- Depression (condition_id = 21)
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(21, 'Fatty Fish', 'Salmon, tuna, mackerel', 'eat', 'Omega-3s are critical for brain function and serotonin production'),
(21, 'Walnuts', 'Raw walnuts daily', 'eat', 'Plant-based omega-3, magnesium, and antioxidants support mood'),
(21, 'Leafy Greens', 'Spinach, kale, swiss chard', 'eat', 'Folate deficiency is linked to depression; greens are folate-rich'),
(21, 'Berries', 'Blueberries, strawberries', 'eat', 'Antioxidants reduce inflammation associated with depression'),
(21, 'Eggs', 'Whole eggs including yolk', 'eat', 'Rich in Vitamin D, B12, and choline for brain health'),
(21, 'Bananas', 'Fresh ripe bananas', 'eat', 'Contains tryptophan which converts to serotonin'),
(21, 'Lentils and Beans', 'All varieties of legumes', 'eat', 'B vitamins and folate support neurotransmitter production'),
(21, 'Junk Food', 'Fast food, processed meals', 'avoid', 'Inflammation from trans fats worsens depressive symptoms'),
(21, 'Refined Sugar', 'Sweets, sodas, candy', 'avoid', 'Sugar crashes worsen mood and energy levels'),
(21, 'Alcohol', 'All alcoholic drinks', 'avoid', 'Depressant that depletes serotonin and disrupts sleep');

-- Insomnia (condition_id = 22)
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(22, 'Warm Milk', 'Glass of warm milk before bed', 'eat', 'Contains tryptophan and calcium which promote melatonin production'),
(22, 'Almonds', 'Small handful before bed', 'eat', 'Rich in magnesium which relaxes muscles and promotes sleep'),
(22, 'Kiwi', 'Two kiwis 1 hour before bed', 'eat', 'Studies show kiwi improves sleep onset and duration by 35%'),
(22, 'Tart Cherry Juice', 'Unsweetened tart cherry juice', 'eat', 'Natural source of melatonin, increases sleep time by 84 minutes'),
(22, 'Banana', 'One banana before bed', 'eat', 'Magnesium and potassium relax muscles; tryptophan aids sleep'),
(22, 'Chamomile Tea', 'Brewed chamomile before bed', 'eat', 'Apigenin binds to GABA receptors promoting sleepiness'),
(22, 'Caffeine after 2pm', 'Coffee, tea, energy drinks', 'avoid', 'Half-life of 5-6 hours means caffeine at 3pm still active at 9pm'),
(22, 'Heavy Meals at Night', 'Large dinner close to bedtime', 'avoid', 'Digestion raises body temperature and disrupts sleep'),
(22, 'Alcohol', 'Wine, beer before bed', 'avoid', 'Disrupts REM sleep and causes middle-of-night awakenings'),
(22, 'Spicy Food at Night', 'Hot, spicy dinners', 'avoid', 'Raises body temperature and may cause acid reflux in bed');

-- Migraine (condition_id = 23)
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(23, 'Magnesium-rich Foods', 'Almonds, cashews, pumpkin seeds', 'eat', 'Magnesium deficiency is found in 50% of migraine sufferers'),
(23, 'Ginger', 'Fresh ginger tea or raw', 'eat', 'As effective as sumatriptan in reducing migraine severity'),
(23, 'Fatty Fish', 'Salmon, sardines weekly', 'eat', 'Omega-3s reduce frequency and intensity of migraines'),
(23, 'Watermelon', 'Fresh watermelon', 'eat', 'Dehydration is a major migraine trigger; watermelon hydrates'),
(23, 'Leafy Greens', 'Spinach, kale', 'eat', 'Rich in riboflavin (B2) which prevents migraines'),
(23, 'Aged Cheese', 'Blue cheese, cheddar, parmesan', 'avoid', 'Contains tyramine which triggers migraines in sensitive people'),
(23, 'Red Wine', 'Red wine and some alcohols', 'avoid', 'Histamine and sulfites in red wine are common triggers'),
(23, 'MSG (Monosodium Glutamate)', 'Chinese food, processed snacks', 'avoid', 'Known migraine trigger in 10-15% of sufferers'),
(23, 'Processed Meats', 'Hot dogs, bacon, salami', 'avoid', 'Nitrates/nitrites dilate blood vessels triggering migraines'),
(23, 'Artificial Sweeteners', 'Aspartame, sucralose', 'avoid', 'Aspartame triggers migraines by affecting neurotransmitters');

-- Acne (condition_id = 24)
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(24, 'Green Tea', 'Brewed green tea', 'eat', 'Polyphenols reduce sebum production and inflammation'),
(24, 'Zinc-rich Foods', 'Pumpkin seeds, chickpeas', 'eat', 'Zinc reduces inflammation and inhibits acne-causing bacteria'),
(24, 'Omega-3 Foods', 'Walnuts, flaxseeds, fish', 'eat', 'Reduces inflammatory markers that worsen acne'),
(24, 'Probiotics', 'Yogurt, kefir, kombucha', 'eat', 'Gut health directly impacts skin inflammation'),
(24, 'Berries', 'Blueberries, strawberries', 'eat', 'Antioxidants fight free radicals that damage skin'),
(24, 'Dairy (excess)', 'Milk, cheese, ice cream', 'avoid', 'Hormones in dairy stimulate oil glands and worsen acne'),
(24, 'High Glycemic Foods', 'White bread, sugary cereals, candy', 'avoid', 'Spike insulin which increases sebum production'),
(24, 'Whey Protein', 'Protein shakes with whey', 'avoid', 'Increases IGF-1 hormone linked to acne breakouts'),
(24, 'Fried/Greasy Food', 'French fries, chips, fried chicken', 'avoid', 'Increases inflammation and oil production');

-- PCOS (condition_id = 28)
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(28, 'Cinnamon', 'Half teaspoon daily in food', 'eat', 'Improves insulin sensitivity and regulates menstrual cycles'),
(28, 'Spearmint Tea', 'Two cups daily', 'eat', 'Reduces androgen levels and helps with hormonal acne/hair growth'),
(28, 'Flaxseeds', 'Ground flaxseeds daily', 'eat', 'Lignans reduce testosterone; fiber improves insulin sensitivity'),
(28, 'Fatty Fish', 'Salmon, sardines twice weekly', 'eat', 'Omega-3s reduce inflammation and improve insulin resistance'),
(28, 'Leafy Greens', 'Spinach, kale, broccoli', 'eat', 'B vitamins help metabolize excess hormones'),
(28, 'Apple Cider Vinegar', 'Diluted before meals', 'eat', 'Improves insulin sensitivity and aids weight management'),
(28, 'Berries', 'All types of berries', 'eat', 'Low glycemic, high antioxidant, reduces inflammation'),
(28, 'Refined Carbs', 'White rice, white bread, pasta', 'avoid', 'Spikes insulin which worsens hormonal imbalance'),
(28, 'Sugary Drinks', 'Soda, juice, sweetened coffee', 'avoid', 'Directly worsens insulin resistance in PCOS'),
(28, 'Dairy (excess)', 'Milk and milk products', 'avoid', 'May increase androgen levels and worsen symptoms'),
(28, 'Red Meat', 'Beef, mutton in large quantities', 'avoid', 'Increases inflammation and can worsen symptoms');

-- IBS (condition_id = 35)
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(35, 'Oatmeal', 'Plain cooked oats', 'eat', 'Soluble fiber soothes digestive tract without irritation'),
(35, 'Bananas', 'Ripe bananas', 'eat', 'Easy to digest, contains pectin which firms loose stools'),
(35, 'Ginger Tea', 'Fresh ginger in hot water', 'eat', 'Reduces bloating, gas, and intestinal cramping'),
(35, 'Rice', 'White or brown rice', 'eat', 'Easily digestible carbohydrate that rarely triggers IBS'),
(35, 'Peppermint Tea', 'Brewed peppermint leaves', 'eat', 'Relaxes intestinal muscles, reduces spasms and pain'),
(35, 'Beans/Lentils', 'Most legumes', 'avoid', 'High FODMAP foods that cause gas and bloating in IBS'),
(35, 'Onions and Garlic', 'Raw or cooked', 'avoid', 'Fructans in onions/garlic trigger IBS symptoms'),
(35, 'Dairy', 'Milk, soft cheese, ice cream', 'avoid', 'Lactose intolerance is common in IBS patients'),
(35, 'Caffeine', 'Coffee, strong tea', 'avoid', 'Stimulates colon contractions, worsens diarrhea-type IBS'),
(35, 'Carbonated Drinks', 'Soda, sparkling water', 'avoid', 'Gas from carbonation worsens bloating and discomfort');

-- Acid Reflux GERD (condition_id = 36)
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(36, 'Oatmeal', 'Plain oatmeal', 'eat', 'Absorbs stomach acid, high fiber keeps you full'),
(36, 'Ginger', 'Fresh ginger in meals or tea', 'eat', 'Natural anti-inflammatory, reduces acid production'),
(36, 'Banana', 'Ripe banana', 'eat', 'Low acid fruit that coats esophageal lining'),
(36, 'Melon', 'Watermelon, cantaloupe', 'eat', 'Alkaline fruits that neutralize acid'),
(36, 'Aloe Vera Juice', 'Pure aloe vera juice', 'eat', 'Soothes and heals irritated esophageal lining'),
(36, 'Tomatoes', 'Fresh tomatoes, pasta sauce', 'avoid', 'Highly acidic, directly triggers acid reflux'),
(36, 'Citrus Fruits', 'Orange, lemon, grapefruit', 'avoid', 'High acid content worsens heartburn'),
(36, 'Chocolate', 'All types of chocolate', 'avoid', 'Relaxes lower esophageal sphincter allowing acid up'),
(36, 'Coffee', 'Regular or decaf', 'avoid', 'Stimulates excess acid production'),
(36, 'Spicy Food', 'Hot peppers, chili', 'avoid', 'Irritates esophageal lining and slows digestion'),
(36, 'Mint', 'Peppermint, spearmint', 'avoid', 'Relaxes the LES muscle allowing acid reflux');

-- Gout (condition_id = 39)
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(39, 'Cherries', 'Fresh or tart cherry juice', 'eat', 'Reduces uric acid levels and gout flare frequency by 35%'),
(39, 'Low-fat Dairy', 'Skim milk, low-fat yogurt', 'eat', 'Proteins in dairy help excrete uric acid'),
(39, 'Water (plenty)', '8-12 glasses daily', 'eat', 'Flushes uric acid from body through kidneys'),
(39, 'Vitamin C Foods', 'Oranges, bell peppers, strawberries', 'eat', 'Lowers uric acid levels by improving kidney excretion'),
(39, 'Coffee', '1-2 cups daily', 'eat', 'Studies show coffee drinkers have lower uric acid levels'),
(39, 'Organ Meats', 'Liver, kidney, brain', 'avoid', 'Extremely high in purines which convert to uric acid'),
(39, 'Red Meat', 'Beef, lamb, pork', 'avoid', 'High purine content directly raises uric acid'),
(39, 'Shellfish', 'Shrimp, lobster, mussels', 'avoid', 'High purine seafood triggers gout attacks'),
(39, 'Beer', 'All types of beer', 'avoid', 'Beer raises uric acid AND impairs its excretion - double hit'),
(39, 'Sugary Drinks', 'Soda with high fructose corn syrup', 'avoid', 'Fructose increases uric acid production in the body');

-- Malaria (condition_id = 31)
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(31, 'Fresh Fruit Juices', 'Orange, apple, sweet lime', 'eat', 'Provides vitamins, hydration, and energy during recovery'),
(31, 'Porridge/Khichdi', 'Soft, easily digestible foods', 'eat', 'Gentle on weakened digestive system, provides energy'),
(31, 'Coconut Water', 'Fresh coconut water', 'eat', 'Replenishes electrolytes lost through sweating and fever'),
(31, 'Soups (clear)', 'Chicken broth, vegetable soup', 'eat', 'Hydrating, nutritious, easy to digest during illness'),
(31, 'Oily/Fried Food', 'Deep fried items', 'avoid', 'Extremely hard to digest when liver is stressed'),
(31, 'Spicy Food', 'Hot and spicy dishes', 'avoid', 'Irritates already weakened digestive system'),
(31, 'Tea/Coffee', 'Caffeinated beverages', 'avoid', 'Dehydrating effect worsens malaria symptoms');

-- Food Poisoning (condition_id = 32)
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(32, 'BRAT Diet (Banana, Rice, Applesauce, Toast)', 'Plain, bland foods', 'eat', 'Binding foods that firm stools and are easy to digest'),
(32, 'ORS/Electrolyte Water', 'Oral rehydration solution', 'eat', 'Replaces lost fluids and electrolytes from vomiting/diarrhea'),
(32, 'Ginger Tea', 'Fresh ginger in warm water', 'eat', 'Reduces nausea and stomach cramps naturally'),
(32, 'Clear Broths', 'Chicken or vegetable broth', 'eat', 'Provides nutrients without straining digestion'),
(32, 'Dairy Products', 'Milk, cheese, cream', 'avoid', 'Lactose is difficult to digest during gut inflammation'),
(32, 'Spicy/Oily Food', 'Any fried or spicy items', 'avoid', 'Irritates inflamed gut lining and worsens diarrhea'),
(32, 'Raw Vegetables', 'Salads, raw veggies', 'avoid', 'Hard fiber is difficult to digest during recovery'),
(32, 'Caffeine/Alcohol', 'Coffee, tea, alcohol', 'avoid', 'Dehydrating and irritating to inflamed stomach');

-- Constipation (condition_id = 37)
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(37, 'Prunes/Dried Plums', '5-6 prunes daily', 'eat', 'Contains sorbitol and fiber - natural laxative effect'),
(37, 'Flaxseeds', 'Ground flaxseeds with water', 'eat', 'Mucilage content lubricates intestines and adds bulk'),
(37, 'Papaya', 'Fresh ripe papaya', 'eat', 'Contains papain enzyme that aids digestion and bowel movement'),
(37, 'Warm Water with Lemon', 'First thing in morning', 'eat', 'Stimulates peristalsis and hydrates after overnight fast'),
(37, 'Whole Grains', 'Brown rice, whole wheat, oats', 'eat', 'Insoluble fiber adds bulk and speeds transit time'),
(37, 'Beans and Lentils', 'All varieties of legumes', 'eat', 'Combination of soluble and insoluble fiber promotes regularity'),
(37, 'White Bread/Refined Flour', 'Maida, white bread, pastries', 'avoid', 'No fiber content, slows down bowel movement'),
(37, 'Excess Dairy', 'Too much cheese, milk', 'avoid', 'Casein protein in dairy can slow bowel movements'),
(37, 'Bananas (unripe)', 'Green, unripe bananas', 'avoid', 'High starch content that is binding and constipating'),
(37, 'Red Meat', 'Beef, pork, lamb', 'avoid', 'Takes long to digest, displaces fiber-rich foods');

-- Hair Loss (condition_id = 26)
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(26, 'Eggs', 'Whole eggs', 'eat', 'Rich in biotin and protein - both essential for hair growth'),
(26, 'Spinach', 'Fresh or cooked spinach', 'eat', 'Iron, folate, Vitamin A, and C all support hair follicles'),
(26, 'Sweet Potatoes', 'Baked or boiled sweet potato', 'eat', 'Beta-carotene converts to Vitamin A which promotes sebum for scalp'),
(26, 'Nuts (esp. Walnuts)', 'Walnuts, almonds, Brazil nuts', 'eat', 'Omega-3, zinc, selenium, and Vitamin E nourish hair follicles'),
(26, 'Lentils and Beans', 'All varieties', 'eat', 'Iron, zinc, biotin, and protein prevent hair thinning'),
(26, 'Avocado', 'Fresh avocado', 'eat', 'Vitamin E and healthy fats improve scalp circulation'),
(26, 'Crash Diets', 'Very low calorie diets', 'avoid', 'Nutrient deficiency from crash dieting causes hair shedding'),
(26, 'Excess Vitamin A', 'Over-supplementing Vitamin A', 'avoid', 'Toxicity from excess Vitamin A actually causes hair loss'),
(26, 'Sugar (excess)', 'High sugar diet', 'avoid', 'Raises androgens which shrink hair follicles'),
(26, 'Alcohol (excess)', 'Heavy drinking', 'avoid', 'Depletes zinc, dehydrates, and impairs nutrient absorption');

-- ==========================================
-- MEDICINES FOR NEW CONDITIONS
-- ==========================================

-- Anxiety
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(20, 'Ashwagandha', 'Adaptogenic herb that reduces cortisol and anxiety', '300-600mg daily', 'Herbal Supplement', 'Clinically proven to reduce anxiety by 56%. Take for 8+ weeks for full effect.'),
(20, 'Magnesium Glycinate', 'Calming form of magnesium for nervous system', '200-400mg daily at night', 'Mineral Supplement', 'Glycinate form is best absorbed and least likely to cause digestive issues.'),
(20, 'L-Theanine', 'Amino acid from green tea that promotes calm alertness', '200mg as needed', 'Amino Acid', 'Works within 30 minutes. Safe to combine with other supplements.');

-- Depression
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(21, 'Omega-3 Fish Oil (EPA)', 'High EPA omega-3 for mood support', '1000-2000mg EPA daily', 'Supplement', 'Choose supplements with higher EPA than DHA for depression benefit.'),
(21, 'Vitamin D3', 'Sunshine vitamin linked to serotonin production', '2000-5000 IU daily', 'Vitamin', 'Get blood levels tested first. Deficiency is very common in depression.'),
(21, 'St. John\'s Wort', 'Herbal antidepressant for mild-moderate depression', '300mg three times daily', 'Herbal', 'DO NOT combine with prescription antidepressants. Interacts with many medications.');

-- Insomnia
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(22, 'Melatonin', 'Natural sleep hormone supplement', '0.5-3mg 30 minutes before bed', 'Hormone', 'Start with lowest dose. More is not better - high doses can worsen sleep.'),
(22, 'Magnesium Glycinate', 'Relaxes muscles and promotes sleep', '300-400mg before bed', 'Mineral', 'Take with warm water. Helps both sleep onset and sleep quality.'),
(22, 'Valerian Root', 'Herbal sedative used for centuries', '300-600mg before bed', 'Herbal', 'Takes 2-4 weeks for full effect. May cause vivid dreams initially.');

-- Migraine
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(23, 'Sumatriptan', 'Triptan medication that narrows blood vessels', '50-100mg at onset of migraine', 'Triptan', 'Take at first sign of migraine. Do not exceed 200mg in 24 hours.'),
(23, 'Magnesium (preventive)', 'Daily magnesium to prevent migraines', '400-600mg daily', 'Mineral Supplement', 'Takes 3 months for full preventive effect. Reduces frequency by 41%.'),
(23, 'Riboflavin (Vitamin B2)', 'High-dose B2 prevents migraines', '400mg daily', 'Vitamin', 'Clinical trials show 50% reduction in migraine frequency after 3 months.');

-- Acne
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(24, 'Zinc Supplement', 'Reduces inflammation and oil production', '30mg zinc picolinate daily', 'Mineral', 'Take with food to avoid nausea. Results visible in 8-12 weeks.'),
(24, 'Benzoyl Peroxide (Topical)', 'Kills acne-causing bacteria on skin', 'Apply thin layer once daily', 'Topical', 'Start with 2.5% strength. Can bleach fabrics. Use sunscreen.'),
(24, 'Niacinamide (Topical)', 'Vitamin B3 serum reduces oil and inflammation', 'Apply 10% serum twice daily', 'Topical', 'Well-tolerated by most skin types. Reduces pore size and redness.');

-- PCOS
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(28, 'Inositol (Myo + D-chiro)', 'Improves insulin sensitivity and ovulation', '4000mg Myo + 100mg D-chiro daily', 'Supplement', 'As effective as Metformin for PCOS. Takes 3-6 months for cycle regulation.'),
(28, 'Vitamin D3', 'Most PCOS women are Vitamin D deficient', '2000-4000 IU daily', 'Vitamin', 'Improves insulin resistance and egg quality. Get levels tested.'),
(28, 'Berberine', 'Natural compound that improves insulin sensitivity', '500mg three times daily with meals', 'Herbal', 'As effective as Metformin but natural. Do not combine with Metformin.');

-- IBS
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(35, 'Peppermint Oil Capsules', 'Enteric-coated peppermint for IBS cramps', '1 capsule three times daily before meals', 'Herbal', 'Must be enteric-coated to avoid heartburn. Reduces pain by 40%.'),
(35, 'Psyllium Husk (Isabgol)', 'Soluble fiber for bowel regulation', '1 tablespoon in water before bed', 'Fiber Supplement', 'Start slowly to avoid gas. Drink plenty of water with it.'),
(35, 'Probiotics (L. plantarum)', 'Specific strains help IBS symptoms', '1 capsule daily', 'Probiotic', 'Look for L. plantarum 299v specifically studied for IBS.');

-- Gout
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(39, 'Allopurinol', 'Reduces uric acid production in the body', '100-300mg daily', 'Xanthine Oxidase Inhibitor', 'Start low, increase gradually. Never start during an active gout attack.'),
(39, 'Colchicine', 'Reduces inflammation during gout attack', '0.5mg twice daily during flare', 'Anti-inflammatory', 'Take at first sign of attack. High doses cause severe diarrhea.'),
(39, 'Cherry Extract', 'Concentrated cherry supplement', '500mg twice daily', 'Supplement', 'Reduces flare-ups by 35%. Can be combined with conventional treatment.');

-- Constipation
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(37, 'Psyllium Husk (Isabgol)', 'Natural bulk-forming laxative', '1-2 tablespoons in warm water at bedtime', 'Fiber Supplement', 'Drink plenty of water. Works within 12-72 hours.'),
(37, 'Triphala', 'Ayurvedic formula for digestive health', '1 teaspoon in warm water at night', 'Herbal', 'Gentle and non-habit forming. Regulates bowel movements naturally.'),
(37, 'Magnesium Citrate', 'Osmotic laxative that draws water to intestines', '200-400mg at bedtime', 'Mineral', 'Gentle effect by morning. Also helps sleep and muscle relaxation.');

-- Food Poisoning
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(32, 'ORS (Oral Rehydration Salt)', 'Prevents life-threatening dehydration', '1 sachet per liter, sip throughout day', 'Electrolyte', 'Most important treatment. Seek hospital if unable to keep fluids down.'),
(32, 'Ondansetron (Emeset)', 'Anti-nausea medication', '4mg as needed every 8 hours', 'Antiemetic', 'Helps you keep fluids down. Dissolves on tongue without water.'),
(32, 'Probiotics', 'Restore gut bacteria after illness', '1 capsule daily for 1-2 weeks', 'Probiotic', 'Start once vomiting stops. Helps restore normal digestion faster.');

-- Hair Loss
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(26, 'Biotin (Vitamin B7)', 'Essential vitamin for hair keratin production', '2500-5000 mcg daily', 'Vitamin', 'Results visible in 3-6 months. May interfere with some blood tests.'),
(26, 'Iron + Vitamin C', 'Iron supplement with Vitamin C for absorption', 'Based on blood test results', 'Mineral', 'Only take if blood tests confirm deficiency. Excess iron is harmful.'),
(26, 'Minoxidil (Topical)', 'FDA-approved for hair regrowth', 'Apply to scalp twice daily', 'Topical', 'Takes 4-6 months for results. Must continue or hair loss returns.');

-- ==========================================
-- TIPS FOR NEW CONDITIONS
-- ==========================================

-- Anxiety
INSERT INTO tips (condition_id, tip, priority) VALUES
(20, 'Practice 4-7-8 breathing: Inhale 4 seconds, hold 7, exhale 8. Do this 4 times whenever anxious.', 1),
(20, 'Exercise 30 minutes daily - it is as effective as medication for mild-moderate anxiety.', 2),
(20, 'Limit screen time and social media. Studies show 2+ hours daily increases anxiety by 50%.', 3),
(20, 'Keep a worry journal - writing fears down reduces their power and helps identify patterns.', 4),
(20, 'Reduce caffeine to maximum 1 cup morning only. Caffeine directly triggers anxiety symptoms.', 5);

-- Depression
INSERT INTO tips (condition_id, tip, priority) VALUES
(21, 'Get morning sunlight for 10-15 minutes within 1 hour of waking. This resets circadian rhythm and boosts serotonin.', 1),
(21, 'Exercise is proven as effective as antidepressants for mild-moderate depression. Start with just 10-minute walks.', 2),
(21, 'Maintain a strict sleep schedule - go to bed and wake up at same time daily, even weekends.', 3),
(21, 'Social connection is medicine. Even a 5-minute call to someone you trust helps.', 4),
(21, 'Seek professional help if symptoms last more than 2 weeks. Depression is a medical condition, not weakness.', 5);

-- Insomnia
INSERT INTO tips (condition_id, tip, priority) VALUES
(22, 'No screens 1 hour before bed. Blue light suppresses melatonin production by 55%.', 1),
(22, 'Keep bedroom cool (18-20°C/65-68°F). Body temperature must drop for sleep onset.', 2),
(22, 'Wake at the same time every day - even after a bad night. This trains your circadian rhythm.', 3),
(22, 'If you cannot sleep after 20 minutes, get up and do something boring in dim light. Return when sleepy.', 4),
(22, 'No naps after 3pm. Even 20 minutes can reduce sleep pressure and delay nighttime sleep.', 5);

-- Migraine
INSERT INTO tips (condition_id, tip, priority) VALUES
(23, 'Keep a migraine diary to identify YOUR triggers - food, weather, sleep, stress, hormones.', 1),
(23, 'Stay hydrated - dehydration is the #1 preventable migraine trigger.', 2),
(23, 'Maintain regular meal times. Skipping meals drops blood sugar which triggers migraines.', 3),
(23, 'Sleep consistently - both too little AND too much sleep trigger migraines.', 4),
(23, 'Apply ice pack to forehead/neck at onset. Cold constricts blood vessels and reduces pain.', 5);

-- PCOS
INSERT INTO tips (condition_id, tip, priority) VALUES
(28, 'Exercise 150 minutes per week - both cardio and strength training improve insulin sensitivity.', 1),
(28, 'Losing just 5-10% body weight can restore regular periods and improve fertility.', 2),
(28, 'Eat protein with every meal to stabilize blood sugar and reduce insulin spikes.', 3),
(28, 'Manage stress - cortisol worsens hormonal imbalance. Practice yoga or meditation daily.', 4),
(28, 'Get 7-9 hours of sleep. Poor sleep worsens insulin resistance and increases cravings.', 5);

-- IBS
INSERT INTO tips (condition_id, tip, priority) VALUES
(35, 'Try the low FODMAP diet for 4-6 weeks, then reintroduce foods one by one to find triggers.', 1),
(35, 'Eat slowly and chew thoroughly - rushed eating swallows air causing bloating.', 2),
(35, 'Manage stress - gut has 100 million neurons. Anxiety directly triggers IBS flares.', 3),
(35, 'Keep a food diary to identify YOUR specific trigger foods. IBS is very individual.', 4),
(35, 'Regular meal times train your gut. Eat at consistent times and dont skip meals.', 5);

-- Gout
INSERT INTO tips (condition_id, tip, priority) VALUES
(39, 'Drink 8-12 glasses of water daily. Dehydration concentrates uric acid and triggers attacks.', 1),
(39, 'Avoid crash diets - rapid weight loss releases stored uric acid and triggers gout.', 2),
(39, 'Ice the affected joint for 20 minutes during a flare. Elevate the joint above heart level.', 3),
(39, 'Limit alcohol - beer is worst, then spirits. Wine has lowest risk but still contributes.', 4),
(39, 'Get uric acid levels tested regularly. Target below 6 mg/dL to prevent crystal formation.', 5);

-- Food Poisoning
INSERT INTO tips (condition_id, tip, priority) VALUES
(32, 'Hydration is the #1 priority. Sip ORS or clear fluids constantly even if you vomit some back.', 1),
(32, 'Do not take anti-diarrheal medicines (Loperamide) in the first 24 hours - your body needs to flush the toxin.', 2),
(32, 'BRAT diet (Banana, Rice, Applesauce, Toast) for first 48 hours after vomiting stops.', 3),
(32, 'Seek emergency care if: bloody stools, fever above 101°F, unable to keep fluids down for 12+ hours.', 4),
(32, 'Wash hands thoroughly and avoid preparing food for others until 48 hours after symptoms resolve.', 5);

-- Hair Loss
INSERT INTO tips (condition_id, tip, priority) VALUES
(26, 'Get blood tests for iron, ferritin, Vitamin D, B12, and thyroid. Deficiency is the most fixable cause.', 1),
(26, 'Scalp massage for 5 minutes daily increases blood flow and can stimulate dormant follicles.', 2),
(26, 'Reduce heat styling and tight hairstyles. Traction alopecia from ponytails is reversible if caught early.', 3),
(26, 'High stress causes telogen effluvium - hair loss 3 months after a stressful event. It usually recovers.', 4),
(26, 'Be patient - hair grows only 1cm per month. Any treatment takes 3-6 months to show visible results.', 5);

-- Constipation
INSERT INTO tips (condition_id, tip, priority) VALUES
(37, 'Drink warm water first thing in the morning to stimulate bowel movement.', 1),
(37, 'Squat position is natural for bowel movements. Use a footstool to elevate knees above hips on toilet.', 2),
(37, 'Walk for 15-20 minutes after meals. Physical movement stimulates intestinal peristalsis.', 3),
(37, 'Never ignore the urge to go. Delaying trains your body to suppress the signal.', 4),
(37, 'Aim for 25-35g fiber daily. Increase gradually to avoid bloating.', 5);

-- Malaria
INSERT INTO tips (condition_id, tip, priority) VALUES
(31, 'Complete the full course of antimalarial medication even if you feel better. Incomplete treatment leads to resistance.', 1),
(31, 'Monitor temperature every 4 hours. Seek emergency care if temperature exceeds 104°F.', 2),
(31, 'Rest completely during fever cycles. Your body needs all energy to fight the parasite.', 3),
(31, 'Prevent mosquito bites - use nets, repellents, and eliminate standing water near home.', 4),
(31, 'Get a follow-up blood test after treatment to confirm the parasite is fully cleared.', 5);

-- Acne
INSERT INTO tips (condition_id, tip, priority) VALUES
(24, 'Never pop or squeeze pimples - this pushes bacteria deeper and causes scarring.', 1),
(24, 'Wash face only twice daily with a gentle cleanser. Over-washing strips oils and worsens acne.', 2),
(24, 'Change pillowcase every 2-3 days. Oil, bacteria, and dead skin accumulate on fabric.', 3),
(24, 'Avoid touching your face throughout the day. Hands transfer bacteria to pores.', 4),
(24, 'Use non-comedogenic (wont clog pores) products. Check labels on moisturizers and sunscreen.', 5);
