
function onCreate()--you can't do anything to the characters until the pre-create post















	-- background shit TWO: ELECTR- yknow the joke

	makeLuaSprite('room2', 'bedroom/bedroom_backdrop', -567, -152);
	setLuaSpriteScrollFactor('room2', 1.0, 1.0);
	setObjectOrder('room2', 0);

	makeLuaSprite('bed2', 'bedroom/bed', 27, 570);
	setLuaSpriteScrollFactor('bed2', 1.0, 1.0);
	setObjectOrder('bed2', 2);


   	makeAnimatedLuaSprite('table2','bedroom/bedside_table', 1120, 460)
    	addAnimationByPrefix('table2','bedroom/bedside_table','bedside table',24,true);
    	objectPlayAnimation('table2','bedside table',false);
	setLuaSpriteScrollFactor('table2', 1.2, 1.1);
	setObjectOrder('table2', 5);

	makeLuaSprite('lamp2', 'bedroom/lamp', -106, -142);
	setLuaSpriteScrollFactor('lamp2', 1.1, 1.2);
        setObjectOrder('lamp2', 3);

   	makeAnimatedLuaSprite('stars2','bedroom/the_cool_star_thing', 950, 250)
    	addAnimationByPrefix('stars2','stars','stars',24,false);
    	objectPlayAnimation('stars2','stars',false);
	setLuaSpriteScrollFactor('stars2', 1.0, 1.0);
	setObjectOrder('stars2', 4);

	addLuaSprite('room2', false);

	addLuaSprite('bed2',false);

	addLuaSprite('stars2',false);

	addLuaSprite('lamp2',false);
	
	addLuaSprite('table2',true);



		setProperty('lamp2.visible',false)















	-- background shit
	makeLuaSprite('room', 'bedroom/bedroom_backdrop_dark', -567, -152);
	setLuaSpriteScrollFactor('room', 1.0, 1.0);
	setObjectOrder('stars', 6);	

	makeLuaSprite('bed', 'bedroom/bed_dark', 27, 570);
	setLuaSpriteScrollFactor('bed', 1.0, 1.0);
	setObjectOrder('bed', 6);

   	makeAnimatedLuaSprite('table','bedroom/bedside_table_dark', 1120, 460)
    	addAnimationByPrefix('table','bedroom/bedside_table_dark','bedside table dark',24,true);
    	objectPlayAnimation('table','bedside table',false);
	setLuaSpriteScrollFactor('table', 1.2, 1.1);
 	setObjectOrder('table', 10);

	makeLuaSprite('lamp', 'bedroom/lamp_dark', -106, -142);
	setLuaSpriteScrollFactor('lamp', 1.1, 1.2);
        setObjectOrder('lamp', 9);

	makeLuaSprite('stars', 'bedroom/stars_dark', 1052, 250);
	setLuaSpriteScrollFactor('stars', 1.0, 1.0);
    	setObjectOrder('stars', 8);

	addLuaSprite('room', false);

	addLuaSprite('bed',false);

	addLuaSprite('stars',false);

	addLuaSprite('lamp',false);
	
	addLuaSprite('table',true);


end
function onCreatePost()


	setProperty('gf.visible',false);
	setObjectOrder('boyfriendGroup',11)
	setObjectOrder('gfGroup',10)
	setObjectOrder('dadGroup',10)

end
function onEvent(n,v,b)
	if n == 'Stage Switch' then
		setProperty('lamp2.visible',true)
		removeLuaSprite('room')
		removeLuaSprite('bed')
		removeLuaSprite('stars')
		removeLuaSprite('lamp')
		removeLuaSprite('table')
        	setProperty('camGame._fxFadeAlpha', 0);
	end


end