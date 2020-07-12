<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MudletPackage>
<MudletPackage version="1.001">
	<TriggerPackage>
		<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>AR - global</name>
			<script></script>
			<triggerType>0</triggerType>
			<conditonLineDelta>0</conditonLineDelta>
			<mStayOpen>0</mStayOpen>
			<mCommand></mCommand>
			<packageName></packageName>
			<mFgColor>#ff0000</mFgColor>
			<mBgColor>#ffff00</mBgColor>
			<mSoundFile></mSoundFile>
			<colorTriggerFgColor>#000000</colorTriggerFgColor>
			<colorTriggerBgColor>#000000</colorTriggerBgColor>
			<regexCodeList />
			<regexCodePropertyList />
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>cures</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>eat</name>
					<script>who = nil
cure = nil
if ar[matches[2]] then
  if ar.colors[matches[3]] then
    selectCurrentLine()
    setFgColor(unpack(ar.colors[matches[3]]))
    resetFormat()
  end
end
who = matches[2]
cure = matches[3]</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>99</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^(\S+)\s*eats\s*(?:a|an|some)\s*?(?:piece of|prickly)?\s*?(\w+)\s*(?:seed|berry|bark|pellet|mote|leaf|chip|flake|crystal|root)?\.$</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>unw body</name>
						<script>if ar[matches[2]] then
  ar[matches[2]].affs.unweavingbody = nil
  raiseEvent("oupdate", matches[2])
  ar.cureecho(matches[2], "unweavingbody")
end
setTriggerStayOpen("eat", 0)</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^(\w+) suddenly seems much more vital\.$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="no" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>unw mind</name>
						<script>if ar[matches[2]] then
  ar[matches[2]].affs.unweavingmind = nil
  raiseEvent("oupdate", matches[2])
  ar.cureecho(matches[2], "unweavingmind")
end
setTriggerStayOpen("eat", 0)</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^The light behind the eyes of (\w+) reignites\.$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>guilt</name>
						<script>if ar[matches[2]] then
  ar[matches[2]].affs.guilt = nil
  raiseEvent("oupdate", matches[2])
  ar.cureecho(matches[2], "guilt")
end
setTriggerStayOpen("eat", 0)</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^(\w+) straightens, as if some great burden had been lifted from \w+ shoulders\.$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>end eat</name>
						<script>if ar.cures[cure] and ar[who] then
  ar.ate(who, cure)
end
setTriggerStayOpen("eat", 0)
who = nil
cure = nil</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string></string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>7</integer>
						</regexCodePropertyList>
					</Trigger>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>smoke</name>
					<script>if ar[matches[2]] then
  selectCaptureGroup(1)
  setFgColor(unpack(ar.colors.smoke))
  resetFormat()
  if
    ar[matches[2]].affs.paralysis and
    ar[matches[2]].affs.slickness and
    (ar[matches[2]].cures[1] == "magnesium" or ar[matches[2]].cures[1] == "bloodroot")
  then
    ar[matches[2]].affs.paralysis = nil
  end
  ar.smoke(matches[2], "smoke")
end</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^(\S+) takes a long drag off .* pipe\.$</string>
						<string>^A great gurgling sound is heard as (\S+) takes a long drag from an enamel bubble pipe\.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>tree</name>
					<script>if ar[matches[2]] then
  if ar.colors.tree then
    selectCaptureGroup(1)
    setFgColor(unpack(ar.colors.tree))
    resetFormat()
  end
  who = matches[2]
end</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>20</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^(\S+) touches a (\w+) of life tattoo\.$</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>guilt</name>
						<script>if ar[matches[2]] then
  ar[matches[2]].affs.guilt = nil
  raiseEvent("oupdate", matches[2])
  ar.cureecho(matches[2], "guilt")
end
who = nil
setTriggerStayOpen("tree", 0)</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^(\S+) straightens, as if some great burden had been lifted from \w+ shoulders\.$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>tree end</name>
						<script>if ar[who] then
  ar.tree(who, "tree")
end
who = nil
setTriggerStayOpen("tree", 0)</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string></string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>7</integer>
						</regexCodePropertyList>
					</Trigger>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>apply</name>
					<script>if ar[matches[2]] then
  selectCaptureGroup(1)
  setFgColor(unpack(ar.colors.apply))
  resetFormat()
  if ar.cures[matches[3]] then
    ar.apply(matches[2], matches[3])
  end
end</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^(\S+) takes some salve from a vial and rubs it on \w+ (\w+)\.$</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>focus</name>
					<script>if ar[matches[2]] then
  selectCaptureGroup(1)
  setFgColor(unpack(ar.colors.focus))
  resetFormat()
  ar.focus(matches[2], "focus")
end</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^A look of extreme focus crosses the face of (\S+)\.$</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>actives and passives</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList />
					<regexCodePropertyList />
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>shrugging</name>
						<script>    if  ar[matches[2]] then 
		if ar[matches[2]].affs.weariness then
      ar.backtrack(matches[2], "weariness")
    end
		ar.passive(matches[2])
		end</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^(\S+) hunches \w+ shoulders and lets out a soft hiss\.$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>dragonheal</name>
						<script>if  ar[matches[2]] then 
ar.passive(matches[2])
ar.passive(matches[2])
ar.passive(matches[2])
end</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^(\S+) lets out a great keening, casting the impurities from \w+ form\.$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>Regular ole passive</name>
						<script>if  ar[matches[2]] then 
ar.passive(matches[2])
end</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^A soft chiming emanates from (\S+)\.$</string>
							<string>^The guardian angel of (\w+) shimmers and \w+ gives a sigh of relief\.$</string>
							<string>^A gentle glow surrounds (\w+)\.$</string>
							<string>^A rune like a rising sun upon the ground flares, bathing (\w+) with healing magic\.$</string>
							<string>^A song can be heard on the edge of hearing as the air distorts about (\w+)\.$</string>
							<string>^A look of relief comes over (\w+) as \w+ grows less pale\.$</string>
							<string>^A demonic crimson glow emanates from (\w+)\.$</string>
							<string>^Magma boils up from within the rents in the strata of (\w+), solidifying to form new protective plates\.$</string>
							<string>^(\w+) lets out a mighty roar\.$</string>
							<string>^The tempestuous form of (\w+) is cleansed by a purifying breeze\.$</string>
							<string>^(\w+) is surrounded in a cool, refreshing mist\.$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>fitness</name>
						<script>if ar[matches[2]] then
  if ar[matches[2]].affs.weariness then
    ar.backtrack(matches[2], "weariness")
  end
  ar[matches[2]].affs.asthma = nil
  raiseEvent("oupdate", matches[2])
end</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^(\w+) draws a deep, measured breath\.$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>salt</name>
						<script>    if  ar[matches[2]] then 
		if ar[matches[2]].affs.stupidity then
      ar.backtrack(matches[2], "stupidity")
    end
		ar.passive(matches[2])
		end</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^(\w+) surrounds \w+ with a translucent achromatic aura\.$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
				</TriggerGroup>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>drink</name>
					<script>if ar[matches[2]] then
  ar.sip(matches[2])
end</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^(\w+) takes a drink from .*\.$</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>catches</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList />
					<regexCodePropertyList />
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>breathing</name>
						<script>if ar[matches[2]] then
  ar.backtrack(matches[2], "asthma")
end
deleteFull()</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^(\w+) inhales and begins holding \w+ breath\.$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>stand</name>
						<script>if ar[matches[2]] then
  ar[matches[2]].affs.prone = nil
  ar.backtrack(matches[2], "paralysis")
  if ar.targetis(matches[2], "brokenrightleg") == true then
    ar[matches[2]].affs.brokenrightleg = nil
  end
  if ar.targetis(matches[2], "brokenleftleg") == true then
    ar[matches[2]].affs.brokenleftleg = nil
  end
end</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^(\w+) stands up\.$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>bloodfire down</name>
						<script>if ar[matches[2]] then
ar[matches[2]].affs.bloodfire = nil
ar.backtrack(matches[2], "haemophilia")
end</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^The unnatural flames that burn upon the skin of (\S+) wink out\.$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>epilepsy</name>
						<script>if ar[matches[2]] then
  ar[matches[2]].affs.epilepsy = 100
end</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^(\w+) begins to jerk and shake violently, foaming at the mouth\.$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>stupidity</name>
						<script>if ar[matches[2]] then
  ar[matches[2]].affs.stupidity = 100
end</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^(\w+) stumbles and pokes \w+ in the eye\.$</string>
							<string>^(\w+) flaps \w+ arms madly\.$</string>
							<string>^(\w+) picks \w+ nose absently\.$</string>
							<string>^(\w+) grunts a bit and then lets out a loud \"OINK\!\"$</string>
							<string>^(\w+) giggles happily\.$</string>
							<string>^(\w+) burps obscenely\.$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>slickness</name>
						<script>if ar[matches[2]] then
  ar.backtrack(matches[2], "slickness")
end</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^(\S+) applies a sileris berry to \w+\.$</string>
							<string>^(\S+) applies a quicksilver droplet to \w+\.$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="no" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>stupidity procs</name>
						<script>if ar[matches[2]] then
ar[matches[2]].affs.stupidity = 100 end
deleteLine()</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^(\S+) picks \w+ nose absently\.$</string>
							<string>^(\S+) wails like an old woman\.$</string>
							<string>^(\S+) giggles happily\.$</string>
							<string>^(\S+) hugs \w+ compassionately\.$</string>
							<string>^(\S+) grunts a bit and then lets out a loud \"OINK\!\"$</string>
							<string>^(\S+) gives up a round of applause\.$</string>
							<string>^(\S+) drops to one knee\.$</string>
							<string>^(\S+) lets out a loud, long \"MOOOOOOOOOOO\!\"$</string>
							<string>^(\S+) gets down on one knee and serenades the world\.$</string>
							<string>^(\S+) waggles \w+ eyebrows comically\.$</string>
							<string>^(\S+) fondles \w+ absently\.$</string>
							<string>^(\S+) blinks\.$</string>
							<string>^(\S+) makes a strangled meowing noise and quickly shuts up, blushing\.$</string>
							<string>^(\S+) flaps \w+ arms madly\.$</string>
							<string>^(\S+) stumbles and pokes \w+ in the eye\.$</string>
							<string>^(\S+) twitches spasmodically\.$</string>
							<string>^(\S+) burps obscenely\.$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
				</TriggerGroup>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>writhe</name>
					<script>if ar[matches[2]] then
ar.writhe(matches[2])
end</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^(\w+) has writhed free</string>
						<string>^With a look of agony on \w+ face, (\w+) manages to writhe \w+ free of the weapon which impaled \w+\.$</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>eat for deafness</name>
					<script>if ar[matches[2]] then
  tempTimer(4, [[ar.]] .. matches[2] .. [[.defs.deaf = true]])
  raiseEvent("oupdate", matches[2])
end</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^(\w+) eats a calamine crystal\.$</string>
						<string>^(\w+) eats a hawthorn berry\.$</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>restore</name>
					<script>ar.restore(matches[2])</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^(\S+) crackles with blue energy that wreathes itself about \w+ limbs\.$</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>defences</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>shield</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList />
					<regexCodePropertyList />
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>shield up</name>
						<script>if ar[matches[2]] then
  ar.ai(matches[2], "shield")
end
selectCurrentLine()
setFgColor(255,215,0)
resetFormat()</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^A shimmering barrier of crystal forms about (\S+)\.$</string>
							<string>^A gentle hum arises from (\S+)'s angel, as it raises a shield to protect h(?:im|er)\.$</string>
							<string>^A nearly invisible magical shield forms around (\S+)\.$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>shield down</name>
						<script>if ar[matches[2]] then
  ar[matches[2]].defs.shield = false
 selectCurrentLine()
 setFgColor(218,165,32)
 resetFormat()
  raiseEvent("oupdate", matches[2])
end</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^\S+ sends myriad russet streams towards (\S+), which whip around h(?:im|er) ineffectually\.$</string>
							<string>^\S+ razes (\S+)'s magical shield with .+\.$</string>
							<string>^\S+ whips .+ through the air in front of (\S+), to no effect\.$</string>
							<string>^\S+'s cantata shatters the defences surrounding (\S+)\.$</string>
							<string>^\S+ lets the grace of h(?:is|er) voice shine forth with a Scarlattan cantata at (\S+)\.$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
				</TriggerGroup>
				<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>rebounding</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList />
					<regexCodePropertyList />
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>rebounding down</name>
						<script>if ar[matches[2]] then
  ar[matches[2]].defs.rebounding = false
  selectCaptureGroup(1)
  setFgColor(65, 105, 225)
  resetFormat()
  raiseEvent("oupdate", matches[2])
end</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^(\S+)'s aura of weapons rebounding disappears\.$</string>
							<string>^\S+ razes (\S+)'s aura of rebounding with (.+)\.$</string>
							<string>^\S+ whips .+ through the air in front of (.+), to no effect\.$</string>
							<string>^\S+ whirls .+ above h(?:is|er) head, before delivering a single terrible blow to (\S+)'s aura of rebounding\.$</string>
							<string>^\S+'s cantata shatters the defences surrounding (\S+)\.$</string>
							<string>^\S+ lets the grace of h(?:is|er) voice shine forth with a Scarlattan cantata at (\S+)\.$</string>
							<string>^The falcon dives at (\S+), ripping apart \w+ aura of rebounding with its talons\.$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>rebounding up</name>
						<script>if
  ar[matches[2]] and
  ar[matches[2]].timers.rebounding and
  isActive(ar[matches[2]].timers.rebounding, "timer") ~= 0
then
  ar[matches[2]].defs.rebounding = true
  killTimer(ar[matches[2]].timers.rebounding)
  selectCurrentLine()
  setFgColor(0, 191, 255)
  resetFormat()
  raiseEvent("oupdate", matches[2])
end</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^You suddenly perceive the vague outline of an aura of rebounding around (\S+)\.$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
				</TriggerGroup>
				<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>mass</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList />
					<regexCodePropertyList />
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>mass down</name>
						<script>if ar[matches[2]] then 
ar[matches[2]].defs.mass = false
end</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^A great weight seems to have been lifted from (\S+)\.$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
				</TriggerGroup>
			</TriggerGroup>
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>AI</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>lifevision catch</name>
					<script>ar.illusion = true</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>** Illusion **</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>3</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
		</TriggerGroup>
	</TriggerPackage>
	<TimerPackage />
	<AliasPackage />
	<ActionPackage />
	<ScriptPackage>
		<ScriptGroup isActive="yes" isFolder="yes">
			<name>AR</name>
			<packageName></packageName>
			<script>ar = ar or {}
ar.classupdate =
  function()
    ar.myclass = string.lower(gmcp.Char.Status.class)
    if string.find(ar.myclass, "Dragon") then
      ar.myclass = "dragon"
    end
    if string.find(ar.myclass, "elemental") then
      ar.myclass = "elord"
    end
  end
registerAnonymousEventHandler("gmcp.Char.Status", "ar.classupdate")
ar.add = ar.add or {}
ar.target = ar.target or {}
target = target or "Archaeon"
ar.target.highlight = {}
ar.limbtarget = ar.limbtarget or "left"
ar.stack = ar.stack or ""
ar.targetlist = ar.targetlist or {}
ar.timers = {}
ar.bals = {"tree", "herb", "class", "apply", "smoke", "focus", "baleq"}
ar.defs = {"mass", "rebounding", "insomnia", "shield", "sileris", "deaf", "speed"}
ar.limbs = {"right arm", "left arm", "right leg", "left leg", "torso", "head"}
ar.afftolerance = ar.afftolerance or 25
ar.venoms =
  {
    ["xentio"] = "clumsiness",
    ["eurypteria"] = "recklessness",
    ["kalmia"] = "asthma",
    ["digitalis"] = "shyness",
    ["darkshade"] = "darkshade",
    ["curare"] = "paralysis",
    ["prefarar"] = "sensitivity",
    ["monkshood"] = "disloyalty",
    ["euphorbia"] = "nausea",
    ["vernalius"] = "weariness",
    ["larkspur"] = "dizziness",
    ["slike"] = "anorexia",
    ["voyria"] = "voyria",
    ["notechis"] = "haemophilia",
    ["vardrax"] = "addiction",
    ["aconite"] = "stupidity",
    ["selarnia"] = "selarnia",
    ["gecko"] = "slickness",
    ["scytherus"] = "scytherus",
    ["nechamandra"] = "shivering",
  }
ar.venomsmanual =
  {
    ["xentio"] = "c",
    ["eurypteria"] = "r",
    ["kalmia"] = "a",
    ["digitalis"] = "e",
    ["darkshade"] = "d",
    ["curare"] = "p",
    ["prefarar"] = "i",
    ["monkshood"] = "y",
    ["euphorbia"] = "n",
    ["vernalius"] = "w",
    ["larkspur"] = "z",
    ["delphinium"] = "l",
    ["slike"] = "x",
    ["voyria"] = "v",
    ["vardrax"] = "c",
    ["aconite"] = "u",
    ["selarnia"] = "m",
    ["gecko"] = "s",
  }
ar.affs =
  {
    "addiction",
    "aeon",
    "agoraphobia",
    "airfisted",
    "amnesia",
    "anorexia",
    "asphyxiating",
    "asthma",
    "blackout",
    "blindness",
    "blistered",
    "bloodfire",
    "bound",
    "brokenleftarm",
    "brokenleftleg",
    "brokenrightarm",
    "brokenrightleg",
    "bruisedribs",
    "burning",
    "cadmuscurse",
    "calcifiedskull",
    "calcifiedtorso",
    "claustrophobia",
    "clumsiness",
    "coldfate",
    "concussion",
    "conflagration",
    "confusion",
    "corruption",
    "crackedribs",
    "crushedthroat",
    "daeggerimpale",
    "damagedhead",
    "damagedleftarm",
    "damagedleftleg",
    "damagedrightarm",
    "damagedrightleg",
    "darkshade",
    "dazed",
    "dazzled",
    "deadening",
    "deafness",
    "deepsleep",
    "degenerate",
    "dehydrated",
    "dementia",
    "demonstain",
    "depression",
    "deteriorate",
    "disloyalty",
    "disrupted",
    "dissonance",
    "dizziness",
    "enlightenment",
    "enmesh",
    "entangled",
    "entropy",
    "epilepsy",
    "fear",
    "flamefisted",
    "fragility",
    "frozen",
    "generosity",
    "guilt",
    "haemophilia",
    "hallucinations",
    "hamstrung",
    "hatred",
    "healthleech",
    "heartseed",
    "hecatecurse",
    "hellsight",
    "hindered",
    "homunculusmercury",
    "hypersomnia",
    "hypochondria",
    "hypothermia",
    "icefisted",
    "impaled",
    "impatience",
    "indifference",
    "inquisition",
    "insomnia",
    "internalbleeding",
    "isolation",
    "itching",
    "justice",
    "kaisurge",
    "kkractlebrand",
    "laceratedthroat",
    "lapsingconsciousness",
    "latched",
    "lethargy",
    "lightbind",
    "loneliness",
    "lovers",
    "manaleech",
    "mangledhead",
    "mangledleftarm",
    "mangledleftleg",
    "mangledrightarm",
    "mangledrightleg",
    "masochism",
    "mildtrauma",
    "mindclamp",
    "mindravaged",
    "muddled",
    "nausea",
    "numbedleftarm",
    "numbedrightarm",
    "pacified",
    "palpatarfeed",
    "paralysis",
    "paranoia",
    "parasite",
    "peace",
    "penitence",
    "petrified",
    "phlogisticated",
    "pinshot",
    "pressure",
    "prone",
    "recklessness",
    "retribution",
    "revealed",
    "scalded",
    "scrambledbrains",
    "scytherus",
    "selarnia",
    "sensitivity",
    "serioustrauma",
    "shadowmadness",
    "shivering",
    "shyness",
    "silenced",
    "silver",
    "skullfractures",
    "slashedthroat",
    "sleeping",
    "slickness",
    "slimeobscure",
    "spiritburn",
    "stunned",
    "stun",
    "stupidity",
    "stuttering",
    "temperedcholeric",
    "temperedmelancholic",
    "temperedphlegmatic",
    "temperedsanguine",
    "tenderskin",
    "tension",
    "timeflux",
    "timeloop",
    "torntendons",
    "tonguetied",
    "transfixation",
    "trueblind",
    "unconsciousness",
    "unweavingbody",
    "unweavingmind",
    "unweavingspirit",
    "vertigo",
    "vinewreathed",
    "vitiated",
    "vitrified",
    "voidfisted",
    "voyria",
    "waterbonds",
    "weakenedmind",
    "weariness",
    "webbed",
    "whisperingmadness",
    "wristfractures",
  }
ar.limbconvert =
  {
    ["left leg"] = "damagedleftleg",
    ["right leg"] = "damagedrightleg",
    ["left arm"] = "damagedleftarm",
    ["right arm"] = "damagedrightarm",
    ["torso"] = "mildtrauma",
    ["head"] = "damagedhead",
  }
ar.cures =
  {
    restore = {"brokenrightleg", "brokenleftleg", "brokenrightarm", "brokenleftarm"},
    magnesium = {"paralysis", "slickness"},
    lobelia =
      {
        "agoraphobia",
        "claustrophobia",
        "loneliness",
        "masochism",
        "recklessness",
        "spiritburn",
        "tenderskin",
        "vertigo",
      },
    ginger = {"temperedcholeric", "temperedmelancholic", "temperedphlegmatic", "temperedsanguine"},
    bellwort =
      {
        "generosity",
        "indifference",
        "justice",
        "lovers",
        "pacified",
        "peace",
        "retribution",
        "timeloop",
      },
    legs =
      {
        "brokenleftleg",
        "brokenrightleg",
        "damagedleftleg",
        "damagedrightleg",
        "mangledleftleg",
        "mangledrightleg",
        "torntendons",
      },
    smoke =
      {
        "aeon",
        "dazed",
        "deadening",
        "disloyalty",
        "hellsight",
        "manaleech",
        "tension",
        "whisperingmadness",
        "slickness",
      },
    argentum =
      {
        "agoraphobia",
        "claustrophobia",
        "loneliness",
        "masochism",
        "recklessness",
        "spiritburn",
        "tenderskin",
        "vertigo",
      },
    body =
      {
        "anorexia",
        "burning",
        "calcifiedtorso",
        "heartseed",
        "hypothermia",
        "itching",
        "mildtrauma",
        "selarnia",
        "serioustrauma",
        "frozen",
        "shivering",
      },
    focus =
      {
        "agoraphobia",
        "anorexia",
        "claustrophobia",
        "confusion",
        "dementia",
        "dizziness",
        "epilepsy",
        "generosity",
        "hallucinations",
        "loneliness",
        "lovers",
        "masochism",
        "pacified",
        "paranoia",
        "recklessness",
        "shyness",
        "stupidity",
        "stuttering",
        "vertigo",
      },
    arms =
      {
        "brokenleftarm",
        "brokenrightarm",
        "damagedleftarm",
        "damagedrightarm",
        "mangledleftarm",
        "mangledrightarm",
        "wristfractures",
      },
    kelp =
      {
        "asthma",
        "clumsiness",
        "healthleech",
        "hypochondria",
        "parasite",
        "sensitivity",
        "weariness",
      },
    ginseng = {"addiction", "darkshade", "haemophilia", "lethargy", "nausea", "scytherus"},
    head =
      {
        "blindness",
        "calcifiedskull",
        "concussion",
        "crushedthroat",
        "damagedhead",
        "deafness",
        "laceratedthroat",
        "mangledhead",
        "scalded",
        "skullfractures",
        "slashedthroat",
        "stuttering",
        "tonguetied",
      },
    goldenseal =
      {
        "depression",
        "dissonance",
        "dizziness",
        "epilepsy",
        "impatience",
        "insomnia",
        "shadowmadness",
        "shyness",
        "stupidity",
      },
    bloodroot = {"paralysis", "slickness"},
    antimony = {"temperedcholeric", "temperedmelancholic", "temperedphlegmatic", "temperedsanguine"},
    calcite = {"pressure"},
    ferrum = {"addiction", "darkshade", "haemophilia", "lethargy", "nausea", "scytherus"},
    cuprum =
      {
        "generosity",
        "indifference",
        "justice",
        "lovers",
        "pacified",
        "peace",
        "retribution",
        "timeloop",
      },
    ash = {"confusion", "dementia", "hallucinations", "hypersomnia", "paranoia"},
    pear = {"pressure"},
    plumbum =
      {
        "depression",
        "dissonance",
        "dizziness",
        "epilepsy",
        "impatience",
        "insomnia",
        "shadowmadness",
        "shyness",
        "stupidity",
      },
    sip = {"voyria"},
    torso =
      {"crackedribs", "mildtrauma", "serioustrauma", "shivering", "frozen", "anorexia", "burning"},
    skin = {"burning", "anorexia", "shivering", "frozen"},
    stannum = {"confusion", "dementia", "hallucinations", "hypersomnia", "paranoia"},
    aurum =
      {
        "asthma",
        "clumsiness",
        "healthleech",
        "hypochondria",
        "parasite",
        "sensitivity",
        "weariness",
      },
    writhe = {"bound", "daeggerimpale", "entangled", "impaled", "transfixation", "webbed"},
    tree =
      {
        "slickness",
        "agoraphobia",
        "claustrophobia",
        "loneliness",
        "masochism",
        "recklessness",
        "spiritburn",
        "tenderskin",
        "vertigo",
        "generosity",
        "indifference",
        "justice",
        "lovers",
        "pacified",
        "peace",
        "retribution",
        "timeloop",
        "brokenleftleg",
        "brokenrightleg",
        "aeon",
        "dazed",
        "deadening",
        "disloyalty",
        "hellsight",
        "manaleech",
        "tension",
        "whisperingmadness",
        "slickness",
        "anorexia",
        "burning",
        "brokenleftarm",
        "brokenrightarm",
        "asthma",
        "clumsiness",
        "healthleech",
        "hypochondria",
        "parasite",
        "sensitivity",
        "weariness",
        "hypothermia",
        "itching",
        "addiction",
        "darkshade",
        "haemophilia",
        "lethargy",
        "nausea",
        "scytherus",
        "stuttering",
        "confusion",
        "dementia",
        "hallucinations",
        "hypersomnia",
        "paranoia",
        "selarnia",
        "depression",
        "dissonance",
        "dizziness",
        "epilepsy",
        "impatience",
        "insomnia",
        "shadowmadness",
        "shyness",
        "stupidity",
        "frozen",
        "shivering",
      },
    passive =
      {
        "paralysis",
        "slickness",
        "agoraphobia",
        "claustrophobia",
        "guilt",
        "loneliness",
        "masochism",
        "recklessness",
        "spiritburn",
        "tenderskin",
        "vertigo",
        "generosity",
        "indifference",
        "justice",
        "lovers",
        "pacified",
        "peace",
        "retribution",
        "timeloop",
        "brokenleftleg",
        "brokenrightleg",
        "aeon",
        "dazed",
        "deadening",
        "disloyalty",
        "hellsight",
        "manaleech",
        "tension",
        "whisperingmadness",
        "anorexia",
        "burning",
        "brokenleftarm",
        "brokenrightarm",
        "asthma",
        "clumsiness",
        "healthleech",
        "hypochondria",
        "parasite",
        "sensitivity",
        "weariness",
        "hypothermia",
        "itching",
        "addiction",
        "darkshade",
        "haemophilia",
        "lethargy",
        "nausea",
        "scytherus",
        "stuttering",
        "confusion",
        "dementia",
        "hallucinations",
        "hypersomnia",
        "paranoia",
        "selarnia",
        "depression",
        "dissonance",
        "dizziness",
        "epilepsy",
        "impatience",
        "insomnia",
        "shadowmadness",
        "shyness",
        "stupidity",
        "frozen",
        "shivering",
      },
  }
ar.limbdamages =
  {
    "damagedrightleg",
    "damagedleftleg",
    "damagedrightarm",
    "damagedleftarm",
    "mildtrauma",
    "damagedhead",
  }</script>
			<eventHandlerList />
			<ScriptGroup isActive="yes" isFolder="yes">
				<name>limbs</name>
				<packageName></packageName>
				<script>-------------------------------------------------
--         Put your Lua functions here.        --
--                                             --
-- Note that you can also use external Scripts --
-------------------------------------------------
</script>
				<eventHandlerList />
				<Script isActive="yes" isFolder="no">
					<name>limb damage</name>
					<packageName></packageName>
					<script>ar.limbdamage =
  function(person, limbhit, percent)
    ar[person].limbs[limbhit] = ar[person].limbs[limbhit] + percent
    if
      ar[person].limbs[limbhit] &gt;= 100 and ar.targetis(person, ar.convertlimb(limbhit)) == false
    then
      ar[person].limbs[limbhit] = 100
      if limbhit == "head" then
        ar.addaff(person, "damagedhead, stupidity", swordline)
      end
      if limbhit == "right arm" then
        ar.addaff(person, "damagedrightarm", swordline)
      end
      if limbhit == "left arm" then
        ar.addaff(person, "damagedleftarm", swordline)
      end
      if limbhit == "right leg" then
        ar.addaff(person, "damagedrightleg", swordline)
      end
      if limbhit == "left leg" then
        ar.addaff(person, "damagedleftleg", swordline)
      end
      if limbhit == "torso" then
        ar.addaff(person, "mildtrauma", swordline)
      end
    end
    if ar[person].timers[limbhit] then
      killTimer(ar[person].timers[limbhit])
    end
    ar[person].timers[limbhit] =
      tempTimer(
        180,
        function()
          ar[person].limbs[limbhit] = 0
          cecho("&lt;gold&gt;Reset &lt;cyan&gt; " .. person .. " &lt;gold&gt;" .. limbhit)
        end
      )
      print(ar[person].limbs[limbhit])
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>limb converter</name>
					<packageName></packageName>
					<script>ar.convertlimb =
  function(limb)
    for k, v in pairs(ar.limbconvert) do
      if k == limb then
        return v
      end
    end
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>limb prepped</name>
					<packageName></packageName>
					<script>ar.limbprepped =
  function(person, limb)
    if ar[person].pphit then
      if ar[person].limbs[limb] + ar[person].pphit &gt;= 100 and ar[person].limbs[limb] &lt; 100 then
        return true
      else
        return false
      end
    else
      return false
    end
  end</script>
					<eventHandlerList />
				</Script>
			</ScriptGroup>
			<ScriptGroup isActive="yes" isFolder="yes">
				<name>Cures</name>
				<packageName></packageName>
				<script></script>
				<eventHandlerList />
				<Script isActive="yes" isFolder="no">
					<name>ate</name>
					<packageName></packageName>
					<script>ar.ate =
  function(person, cure)
    if ar[person].affs.anorexia then
      ar.backtrack(person, "anorexia")
    end
    ar.checkprios(person, cure)
    affs = {}
    if ar[person].bals.herb == true then
      for _, aff in pairs(ar.cures[cure]) do
        if table.contains(ar[person].affs, aff) then
          table.insert(affs, aff)
        end
      end
      if #affs == 0 then
        return
      end
      percentchange = math.ceil(100 / #affs)
      for i = 1, #affs do
        ar[person].affs[affs[i]] = (ar[person].affs[affs[i]] - percentchange)
        if ar[person].affs[affs[i]] &lt; ar.afftolerance then
          ar[person].affs[affs[i]] = nil
        end
      end
      ar[person].pcure[cure] = percentchange
      table.insert(ar[person].cures, 1, cure)
      ar[person].bals.herb = false
      ar[person].timers.herbtimer =
        tempTimer(
          1.2,
          function()
            ar[person].bals.herb = true
          end
        )
      ar.cureecho(person, table.concat(affs, ", "))
      affs = {}
      raiseEvent("oupdate", person)
    end
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>applied</name>
					<packageName></packageName>
					<script>ar.apply =
  function(person, cure)
    if ar[person].affs.slickness then
      ar.backtrack(person, "slickness")
    end
    ar[person].bals.apply = false
    affs = {}
    for _, aff in pairs(ar.cures[cure]) do
      if table.contains(ar[person].affs, aff) then
        table.insert(affs, aff)
      end
    end
    if #affs == 0 then
      if ar[person].defs.mass == false then
        ar[person].defs.mass = true
        tempTimer(1, [[ar.]] .. person .. [[.bals.apply = true]])
      else
        return
      end
    end
    percentchange = math.ceil(100 / #affs)
    for _, limb in pairs(ar.limbconvert) do
      if table.contains(affs, limb) then
        return ar.limbcure(person, limb)
      end
    end
    if table.contains(affs, "tonguetied") then
      return
        tempTimer(
          3.9,
          function()
          if ar.targetis(target, "damagedhead") == false then
            ar[person].affs.tonguetied = nil
            ar.cureecho(person, "tonguetied")
            else
                  ar[person].affs.damagedhead = nil
            ar.cureecho(person, "damagedhead")
            end
          end
        )
    end
    if table.contains(affs, "concussion") then
      return
        tempTimer(
          3.9,
          function()
            ar[person].affs.tonguetied = nil
            ar.cureecho(person, "concussion")
          end
        )
    end
    if table.contains(affs, "stuttering") and ar[person].affs.tonguetied then
      table.remove(affs, table.index_of(affs, "stuttering"))
    end
    for i = 1, #affs do
      ar[person].affs[affs[i]] = (ar[person].affs[affs[i]] - percentchange)
      tempTimer(1, [[ar.]] .. person .. [[.bals.apply = true]])
      if ar[person].affs[affs[i]] &lt; ar.afftolerance then
        ar[person].affs[affs[i]] = nil
      end
    end
    ar[person].pcure[cure] = percentchange
    table.insert(ar[person].cures, 1, cure)
    ar.cureecho(person, table.concat(affs, ", "))
    if table.contains(affs, "burning") and ar.targetis(person, "inquisition") then
      ar[person].affs.inquisition = nil
      killTimer(ar[person].timers.inqtimer)
    end
    affs = {}
    raiseEvent("oupdate", person)
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>smoked</name>
					<packageName></packageName>
					<script>ar.smoke =
  function(person, cure)
    if ar[person].affs.asthma then
      ar.backtrack(person, "asthma")
    end
    affs = {}
    for _, aff in pairs(ar.cures[cure]) do
      if table.contains(ar[person].affs, aff) then
        table.insert(affs, aff)
      end
    end
    if #affs == 0 then
      if ar.targetis(person, "unweavingspirit") == false then
        return ar.reboundingtracker(person)
      else
        return
      end
    end
    percentchange = math.ceil(100 / #affs)
    for i = 1, #affs do
      ar[person].affs[affs[i]] = (ar[person].affs[affs[i]] - percentchange)
      if ar[person].affs[affs[i]] &lt; ar.afftolerance then
        ar[person].affs[affs[i]] = nil
      end
    end
    ar[person].pcure[cure] = percentchange
    table.insert(ar[person].cures, 1, cure)
    ar.cureecho(person, table.concat(affs, ", "))
    affs = {}
    raiseEvent("oupdate", person)
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>focus</name>
					<packageName></packageName>
					<script>ar.focus =
  function(person, cure)
    if ar[person].affs.impatience then
      ar.backtrack(person, "impatience")
    end
    affs = {}
    for _, aff in pairs(ar.cures[cure]) do
      if table.contains(ar[person].affs, aff) then
        table.insert(affs, aff)
      end
    end
    if #affs == 0 then
      return
    end
    if table.contains(affs, "stuttering") and ar[person].affs.tonguetied then
      table.remove(affs, table.index_of(affs, "stuttering"))
    end
    percentchange = math.ceil(100 / #affs)
    for i = 1, #affs do
      ar[person].affs[affs[i]] = (ar[person].affs[affs[i]] - percentchange)
      if ar[person].affs[affs[i]] &lt; ar.afftolerance then
        ar[person].affs[affs[i]] = nil
      end
    end
    ar[person].pcure[cure] = percentchange
    table.insert(ar[person].cures, 1, cure)
    ar.cureecho(person, table.concat(affs, ", "))
    affs = {}
    raiseEvent("oupdate", person)
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>tree</name>
					<packageName></packageName>
					<script>ar.tree =
  function(person, cure)
    if ar[person].affs.paralysis then
      ar.backtrack(person, "paralysis")
    end
    affs = {}
    for _, aff in pairs(ar.cures[cure]) do
      if table.contains(ar[person].affs, aff) then
        table.insert(affs, aff)
      end
    end
    if #affs == 0 then
      return
    end
    percentchange = math.ceil(100 / #affs)
    for i = 1, #affs do
      ar[person].affs[affs[i]] = (ar[person].affs[affs[i]] - percentchange)
      if ar[person].affs[affs[i]] &lt; ar.afftolerance then
        ar[person].affs[affs[i]] = nil
      end
    end
    ar[person].pcure[cure] = percentchange
    table.insert(ar[person].cures, 1, cure)
    ar[person].bals.tree = false
    ar[person].timers.tree =
      tempTimer(
        10,
        function()
          ar[person].bals.tree = true
          killTimer(ar[person].timers.tree)
        end
      )
    ar.cureecho(person, table.concat(affs, ", "))
    affs = {}
    raiseEvent("oupdate", person)
  end</script>
					<eventHandlerList />
				</Script>
				<ScriptGroup isActive="yes" isFolder="yes">
					<name>passives</name>
					<packageName></packageName>
					<script>-------------------------------------------------
--         Put your Lua functions here.        --
--                                             --
-- Note that you can also use external Scripts --
-------------------------------------------------
</script>
					<eventHandlerList />
					<Script isActive="yes" isFolder="no">
						<name>pasive</name>
						<packageName></packageName>
						<script>ar.passive =
  function(person)
    if ar[person].affs.voyria then
      ar[person].affs.voyria = nil
      return
    end
    affs = {}
    for _, aff in pairs(ar.cures.passive) do
      if table.contains(ar[person].affs, aff) then
        table.insert(affs, aff)
      end
    end
    if #affs == 0 then
      return
    end
    if table.contains(affs, "voyria") then
      ar[person].affs.voyria = nil
      return
    end
    if table.contains(affs, "stuttering") and ar[person].affs.tonguetied then
      table.remove(affs, table.index_of(affs, "stuttering"))
    end
    percentchange = math.ceil(100 / #affs)
    for i = 1, #affs do
      ar[person].affs[affs[i]] = (ar[person].affs[affs[i]] - percentchange)
      if ar[person].affs[affs[i]] &lt; ar.afftolerance then
        ar[person].affs[affs[i]] = nil
      end
    end
    ar[person].pcure.passive = percentchange
    table.insert(ar[person].cures, 1, "passive")
    ar.cureecho(person, table.concat(affs, ", "))
    affs = {}
    raiseEvent("oupdate", person)
  end</script>
						<eventHandlerList />
					</Script>
				</ScriptGroup>
				<Script isActive="yes" isFolder="no">
					<name>limb cure</name>
					<packageName></packageName>
					<script>ar.limbcure =
  function(person, limb)
  tempTimer(
      3.9,
      function()
        ar[person].affs[limb] = nil
        for k, v in pairs(ar.limbconvert) do
          if limb == v then
            ar[person].bals.apply = true
            ar[person].limbs[k] = 0
            ar.cureecho(person, limb)
            raiseEvent("oupdate", person)
          end
        end
        if limb == "damagedrightleg" then
          ar.addaff(person, "brokenrightleg", getLineNumber())
        end
        if limb == "damagedleftleg" then
          ar.addaff(person, "brokenleftleg", getLineNumber())
        end
        if limb == "damagedrightarm" then
          ar.addaff(person, "brokenrightarm", getLineNumber())
        end
        if limb == "damagedleftarm" then
          ar.addaff(person, "brokenleftarm", getLineNumber())
        end
      end
    )
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>writhe</name>
					<packageName></packageName>
					<script>ar.writhe =
  function(person)
    for _, aff in pairs(ar.cures.writhe) do
      if table.contains(ar[person].affs, aff) then
        table.insert(affs, aff)
      end
    end
    for _, aff in pairs(affs) do
      ar[person].affs[aff] = nil
      ar.cureecho(person, table.concat(affs, ", "))
      affs = {}
    end
    raiseEvent("oupdate", person)
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>sip</name>
					<packageName></packageName>
					<script>ar.sip =
  function(person)
    if ar[person].affs.anorexia then
      ar.backtrack(person, "anorexia")
    end
    if ar[person].defs.speed == false then
      ar[person].timers.speedtimer =
        tempTimer(
          2.5,
          function()
            ar[person].defs.speed = true
          end
        )
    end
    if ar[person].affs.voyria then
      ar[person].affs.voyria = nil
    end
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>restore</name>
					<packageName></packageName>
					<script>ar.restore =
  function(person)
    for _, aff in pairs(ar.cures.restore) do
      if table.contains(ar[person].affs, aff) then
        table.insert(affs, aff)
      end
    end
    for _, aff in pairs(affs) do
      ar[person].affs[aff] = nil
      if #affs &gt; 0 then
        ar.cureecho(person, table.concat(affs, ", "))
      end
      affs = {}
    end
    table.insert(ar[person].cures, 1, cure)
    raiseEvent("oupdate", person)
  end</script>
					<eventHandlerList />
				</Script>
			</ScriptGroup>
			<ScriptGroup isActive="yes" isFolder="yes">
				<name>Global functions</name>
				<packageName></packageName>
				<script>ar.setup =
  {
    paladin =
      {
        engaged = false,
        atfork = false,
        defs = {},
        timers = {},
        limbs = {},
        bals = {},
        pcure = {},
        cures = {},
        affs = {},
        parry = {},
      },
    priest =
      {defs = {}, timers = {}, limbs = {}, bals = {}, pcure = {}, cures = {}, affs = {}, parry = {}},
    jester =
      {defs = {}, timers = {}, limbs = {}, bals = {}, pcure = {}, cures = {}, affs = {}, parry = {}},
  }
ar.prompt = {}
ar.laststack = ar.laststack or "focuslock"
ar.affcures =
  {
    fragility = {"unknown"},
    parasite = {"eat", "kelp"},
    coldfate = {"time"},
    conflagration = {"unknown"},
    manaleech = {"smoke", "valerian"},
    mangledhead = {"apply", "restoration"},
    calcifiedskull = {"apply", "restoration"},
    epilepsy = {"eat", "goldenseal", "focus"},
    hatred = {"time"},
    fear = {"compose"},
    internalbleeding = {"time"},
    weariness = {"eat", "kelp"},
    selarnia = {"apply", "mending"},
    enlightenment = {"unknown"},
    degenerate = {"time"},
    pressure = {"eat", "pear"},
    silenced = {"time"},
    dizziness = {"eat", "goldenseal", "focus"},
    silver = {"time"},
    blackout = {"time"},
    webbed = {"writhe"},
    mangledrightarm = {"apply", "restoration"},
    solarburn = {"time"},
    shadowmadness = {"eat", "goldenseal"},
    guilt = {"eat", "lobelia"},
    haemophilia = {"eat", "ginseng"},
    shivering = {"apply", "caloric"},
    waterbonds = {"time"},
    temperedsanguine = {"eat", "ginger"},
    dissonance = {"eat", "goldenseal"},
    laceratedthroat = {"apply", "restoration"},
    demonstain = {"time"},
    lapsingconsciousness = {"time"},
    kkractlebrand = {"unknown"},
    burning = {"apply", "mending"},
    slimeobscure = {"time"},
    skullfractures = {"apply", "health"},
    masochism = {"eat", "lobelia", "focus"},
    disloyalty = {"smoke", "valerian"},
    clumsiness = {"eat", "kelp"},
    darkshade = {"eat", "ginseng"},
    aeon = {"smoke", "elm"},
    vitiated = {"time"},
    stupidity = {"eat", "goldenseal", "focus"},
    healthleech = {"eat", "kelp"},
    agoraphobia = {"eat", "lobelia", "focus"},
    deepsleep = "unknown",
    bound = {"writhe"},
    concussion = {"apply", "restoration"},
    tenderskin = {"eat", "lobelia"},
    dehydrated = {"time"},
    mangledleftleg = {"apply", "restoration"},
    claustrophobia = {"eat", "lobelia", "focus"},
    brokenleftarm = {"apply", "mending"},
    torntendons = {"apply", "health"},
    flamefisted = {"time"},
    mangledrightleg = {"apply", "restoration"},
    unconsciousness = {"time"},
    indifference = {"eat", "bellwort"},
    bloodfire = {"unknown"},
    enmesh = {"time"},
    heartseed = {"apply", "restoration"},
    numbedleftarm = {"time"},
    hindered = {"time"},
    vitrified = {"time"},
    generosity = {"eat", "bellwort", "focus"},
    homunculusmercury = {"time"},
    transfixation = {"writhe"},
    whisperingmadness = {"smoke", "elm"},
    sleeping = {"wake"},
    blistered = {"time"},
    confusion = {"eat", "ash", "focus"},
    slickness = {"eat", "bloodroot", "smoke", "valerian"},
    bruisedribs = {"time"},
    vertigo = {"eat", "lobelia", "focus"},
    recklessness = {"eat", "lobelia", "focus"},
    mindravaged = {"time"},
    hecatecurse = {"time"},
    paralysis = {"eat", "bloodroot"},
    revealed = {"time"},
    mindclamp = "unknown",
    serioustrauma = {"apply", "restoration"},
    corruption = {"time"},
    brokenrightleg = {"apply", "mending"},
    penitence = "unknown",
    stuttering = {"apply", "epidermal", "focus"},
    impaled = {"writhe"},
    weakenedmind = {"unknown"},
    unweavingbody = {"eat", "ginseng"},
    retribution = {"eat", "bellwort"},
    dazzled = {"apply", "mending"},
    numbedrightarm = {"time"},
    isolation = {"unknown"},
    asthma = {"eat", "kelp"},
    wristfractures = {"apply", "health"},
    entangled = {"writhe"},
    amnesia = {"touch flaws"},
    kaisurge = {"time"},
    icefisted = {"time"},
    timeloop = {"eat", "bellwort"},
    asphyxiating = {"time"},
    peace = {"eat", "bellwort"},
    timeflux = {"time"},
    depression = {"eat", "goldenseal"},
    hamstrung = {"time"},
    hypochondria = {"eat", "kelp"},
    frozen = {"apply", "caloric"},
    trueblind = {"time"},
    deteriorate = {"time"},
    palpatarfeed = {"unknown"},
    addiction = {"eat", "ginseng"},
    prone = {"unknown"},
    brokenrightarm = {"apply", "mending"},
    entropy = {"time"},
    inquisition = {"time"},
    impatience = {"eat", "goldenseal"},
    unweavingspirit = {"smoke", "elm"},
    lethargy = {"eat", "ginseng"},
    lightbind = {"time"},
    loneliness = {"eat", "lobelia", "focus"},
    damagedleftleg = {"apply", "restoration"},
    hypersomnia = {"eat", "ash"},
    disrupted = {"concentrate"},
    lovers = {"eat", "bellwort", "focus"},
    calcifiedtorso = {"apply", "restoration"},
    damagedrightarm = {"apply", "restoration"},
    tension = {"smoke", "elm"},
    deadening = {"smoke", "elm"},
    mangledleftarm = {"apply", "restoration"},
    dementia = {"eat", "ash", "focus"},
    unweavingmind = {"eat", "goldenseal"},
    damagedhead = {"apply", "restoration"},
    pacified = {"eat", "bellwort", "focus"},
    voidfisted = {"time"},
    damagedrightleg = {"apply", "restoration"},
    crackedribs = {"apply", "health"},
    itching = {"apply", "epidermal"},
    scytherus = {"eat", "ginseng"},
    hypothermia = {"apply", "restoration"},
    petrified = {"time"},
    insomnia = {"eat", "goldenseal"},
    phlogisticated = {"time"},
    latched = {"unknown"},
    paranoia = {"eat", "ash", "focus"},
    pinshot = {"time"},
    hellsight = {"smoke", "valerian"},
    scrambledbrains = {"time"},
    damagedleftarm = {"apply", "restoration"},
    anorexia = {"apply", "epidermal", "focus"},
    dazed = {"smoke", "elm"},
    sensitivity = {"eat", "kelp"},
    shyness = {"eat", "goldenseal", "focus"},
    crushedthroat = {"apply", "mending"},
    slashedthroat = {"apply", "epidermal"},
    temperedphlegmatic = {"eat", "ginger"},
    spiritburn = {"eat", "lobelia"},
    airfisted = {"time"},
    temperedmelancholic = {"eat", "ginger"},
    daeggerimpale = {"writhe"},
    mildtrauma = {"apply", "restoration"},
    voyria = {"sip", "immunity"},
    nausea = {"eat", "ginseng"},
    hallucinations = {"eat", "ash", "focus"},
    vinewreathed = {"time"},
    muddled = {"time"},
    temperedcholeric = {"eat", "ginger"},
    scalded = {"apply", "epidermal"},
    cadmuscurse = "unknown",
    justice = {"eat", "bellwort"},
    brokenleftleg = {"apply", "mending"},
  }
ar.affshortnames =
  {
    fragility = "frag",
    parasite = "para",
    coldfate = "cldf",
    conflagration = "conf",
    manaleech = "mlch",
    mangledhead = "hdl2",
    calcifiedskull = "cskl",
    epilepsy = "epil",
    hatred = "hatr",
    fear = "fear",
    internalbleeding = "ibld",
    weariness = "wear",
    loneliness = "lone",
    enlightenment = "enli",
    degenerate = "dege",
    pressure = "pres",
    impatience = "IMPAT",
    dizziness = "dizz",
    silver = "silv",
    blackout = "blac",
    webbed = "webb",
    mangledrightarm = "ral2",
    solarburn = "sola",
    shadowmadness = "smad",
    guilt = "guil",
    haemophilia = "haem",
    shivering = "shiv",
    deteriorate = "dter",
    temperedsanguine = "sang",
    dissonance = "diss",
    laceratedthroat = "lthr",
    demonstain = "stan",
    lapsingconsciousness = "lcon",
    kkractlebrand = "kkra",
    burning = "burn",
    slimeobscure = "nink",
    skullfractures = "sfrc",
    masochism = "maso",
    disloyalty = "disl",
    clumsiness = "clum",
    darkshade = "dark",
    aeon = "aeon",
    peace = "peac",
    stupidity = "stup",
    healthleech = "hlch",
    agoraphobia = "agor",
    deepsleep = "dslp",
    bound = "boun",
    concussion = "conc",
    tenderskin = "tskn",
    dehydrated = "dehy",
    mangledleftleg = "lll2",
    claustrophobia = "clau",
    brokenleftarm = "blar",
    torntendons = "ttnd",
    flamefisted = "ffst",
    mangledrightleg = "rll2",
    unconsciousness = "unco",
    indifference = "indi",
    bloodfire = "bfir",
    enmesh = "enme",
    heartseed = "hear",
    numbedleftarm = "nula",
    hindered = "hind",
    hypersomnia = "hype",
    generosity = "gene",
    homunculusmercury = "merc",
    transfixation = "tfix",
    whisperingmadness = "wmad",
    sleeping = "slee",
    blistered = "blis",
    confusion = "conf",
    damagedleftleg = "lll1",
    bruisedribs = "brib",
    vertigo = "vert",
    recklessness = "reck",
    mindravaged = "mrav",
    hecatecurse = "HEC8",
    paralysis = "PARA",
    revealed = "reve",
    mindclamp = "mind",
    serioustrauma = "trl2",
    corruption = "corr",
    brokenrightleg = "brlg",
    penitence = "peni",
    prone = "PRON",
    impaled = "IMPAL",
    wristfractures = "wfrc",
    unweavingbody = "uwbd",
    retribution = "retr",
    dazzled = "dazz",
    numbedrightarm = "nura",
    weakenedmind = "rixl",
    waterbonds = "wbnd",
    kaisurge = "ksrg",
    entangled = "enta",
    amnesia = "amne",
    voyria = "voyr",
    scalded = "scal",
    timeloop = "tlop",
    asphyxiating = "asph",
    vitrified = "vitr",
    vitiated = "viti",
    vinewreathed = "vret",
    stuttering = "stut",
    unweavingmind = "uwmd",
    frozen = "froz",
    trueblind = "tbld",
    timeflux = "tflx",
    palpatarfeed = "palp",
    selarnia = "sela",
    lightbind = "lbnd",
    brokenrightarm = "brra",
    entropy = "entr",
    temperedmelancholic = "mela",
    airfisted = "airf",
    unweavingspirit = "unwsp",
    spiritburn = "sbrn",
    slickness = "SLIC",
    slashedthroat = "sthr",
    silenced = "sile",
    shyness = "shyn",
    disrupted = "disr",
    lovers = "love",
    sensitivity = "SENSI",
    tonguetied = "TTIE",
    damagedrightarm = "ral1",
    tension = "tens",
    anorexia = "ANOR",
    deadening = "dead",
    scytherus = "scyt",
    damagedleftarm = "lal1",
    scrambledbrains = "sbrn",
    hellsight = "hsit",
    voidfisted = "vfst",
    pinshot = "pins",
    paranoia = "para",
    latched = "LATCH",
    phlogisticated = "phlo",
    hypothermia = "HYPO",
    petrified = "PETR",
    itching = "ITCH",
    crackedribs = "crib",
    damagedrightleg = "rll1",
    insomnia = "inso",
    pacified = "paci",
    damagedhead = "hdl1",
    nausea = "naus",
    dementia = "deme",
    calcifiedtorso = "ctor",
    dazed = "daze",
    inquisition = "inqu",
    addiction = "addi",
    crushedthroat = "CTHR",
    mangledleftarm = "lal2",
    temperedphlegmatic = "phlg",
    lethargy = "leth",
    depression = "depr",
    justice = "just",
    daeggerimpale = "daeg",
    mildtrauma = "TRL1",
    hypochondria = "hypo",
    hamstrung = "hams",
    hallucinations = "hall",
    icefisted = "icef",
    muddled = "mudd",
    temperedcholeric = "chol",
    cadmuscurse = "cadm",
    asthma = "ASTH",
    isolation = "isol",
    brokenleftleg = "brll",
    stunned = "STUN",
  }

function ar.affcolors(aff)
  local affcolor = "&lt;white&gt;"
  if table.contains(ar.affcures[aff], "kelp") then
    affcolor = "&lt;green&gt;"
  end
  if table.contains(ar.affcures[aff], "bloodroot") then
    affcolor = "&lt;SaddleBrown&gt;"
  end
  if table.contains(ar.affcures[aff], "smoke") then
    affcolor = "&lt;royal_blue&gt;"
  end
  if table.contains(ar.affcures[aff], "time") then
    affcolor = "&lt;cyan&gt;"
  end
  if table.contains(ar.affcures[aff], "goldenseal") then
    affcolor = "&lt;gold&gt;"
  end
  if table.contains(ar.affcures[aff], "lobelia") then
    affcolor = "&lt;VioletRed&gt;"
  end
  if table.contains(ar.affcures[aff], "restoration") then
    affcolor = "&lt;firebrick&gt;"
  end
  if table.contains(ar.affcures[aff], "epidermal") then
    affcolor = "&lt;PaleGreen&gt;"
  end
  if table.contains(ar.affcures[aff], "ash") then
    affcolor = "&lt;orange&gt;"
  end
  if table.contains(ar.affcures[aff], "compose") then
    affcolor = "&lt;aquamarine&gt;"
  end
  if aff == "enlightenment" then
    affcolor = "&lt;purple&gt;"
  end
  if table.contains(ar.affcures[aff], "pear") then
    affcolor = "&lt;dodger_blue&gt;"
  end
  if table.contains(ar.affcures[aff], "writhe") then
    affcolor = "&lt;beige&gt;"
  end
  if table.contains(ar.affcures[aff], "ginseng") then
    affcolor = "&lt;dark_goldenrod&gt;"
  end
  if table.contains(ar.affcures[aff], "caloric") then
    affcolor = "&lt;navy_blue&gt;"
  end
  if aff == "temperedsanguine" then
    affcolor = "&lt;indian_red&gt;"
  end
  if aff == "kkractlebrand" then
    affcolor = "&lt;red&gt;"
  end
  if table.contains(ar.affcures[aff], "mending") then
    affcolor = "&lt;dark_salmon&gt;"
  end
  if table.contains(ar.affcures[aff], "health") then
    affcolor = "&lt;orange_red&gt;"
  end
  if table.contains(ar.affcures[aff], "bellwort") then
    affcolor = "&lt;HotPink&gt;"
  end
  if aff == "stunned" then
    affcolor = "&lt;grey&gt;"
  end
  return affcolor
end</script>
				<eventHandlerList />
				<Script isActive="yes" isFolder="no">
					<name>colors</name>
					<packageName></packageName>
					<script>ar.colors =
  {
    ["aurum"] = {0, 255, 0},
    ["kelp"] = {0, 255, 0},
    ["goldenseal"] = {246, 225, 25},
    ["plumbum"] = {246, 225, 25},
    ["bloodroot"] = {70, 64, 16},
    ["magnesium"] = {70, 64, 16},
    ["body"] = {68, 140, 81},
    ["torso"] = {68, 140, 81},
    ["smoke"] = {142, 142, 142},
    ["ginseng"] = {241, 255, 58},
    ["ferrum"] = {241, 255, 58},
    ["apply"] = {255, 69, 0},
    ["argentum"] = {156, 39, 176},
    ["lobelia"] = {156, 39, 176},
    ["focus"] = {70, 64, 240},
    ["tree"] = {19, 137, 11},
    ["time"] = {31, 31, 34},
  }</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>setup table for target</name>
					<packageName></packageName>
					<script>ar.targetsetup =
  function(person)
    ar[person] = {}
    cecho("&lt;cyan&gt; setting up &lt;gold&gt;" .. person)
    ar[person] = table.deepcopy(ar.setup[ar.myclass])
    for i = 1, #ar.defs do
      ar[person].defs[ar.defs[i]] = true
      ar[person].defs.shield = false
    end
    for i = 1, #ar.timers do
      ar[person].timers[ar.timers[i]] = 0
    end
    for i = 1, #ar.bals do
      ar[person].bals[ar.bals[i]] = true
    end
    if ar[person].limbs then
      for i = 1, #ar.limbs do
        ar[person].limbs[ar.limbs[i]] = 0
      end
    end
    if ar.myclass == "paladin" then
      ar.stack = "focuslock"
    end
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>backtrack</name>
					<packageName></packageName>
					<script>ar.backtrack =
  function(person, aff)
    if ar[person].affs[aff] then
      if table.contains(ar.cures[ar[person].cures[1]], aff) then
        for i = 1, #ar.cures[ar[person].cures[1]] do
          if ar[person].affs[ar.cures[ar[person].cures[1]][i]] then
            ar[person].affs[ar.cures[ar[person].cures[1]][i]] =
              ar[person].affs[ar.cures[ar[person].cures[1]][i]] +
              ar[person].pcure[ar[person].cures[1]]
          end
        end
      end
      ar[person].affs[aff] = nil
			ar.btrackecho(person, aff)
    end
			raiseEvent("oupdate", person)
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>vconvert</name>
					<packageName></packageName>
					<script>ar.vconvert =
  function(venom)
    return ar.venoms[venom]
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>probability</name>
					<packageName></packageName>
					<script>ar.probability =
  function(person, aff)
    if ar[person].affs[aff] == nil then
      return 0
    else
      return ar[person].affs[aff]
    end
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>rebounding tracker</name>
					<packageName></packageName>
					<script>ar.reboundingtracker =
  function(person)
    if ar[person] then
      ar[person].timers.rebounding =
        tempTimer(
          8.8,
          function()
            ar[person].defs.rebounding = true
            raiseEvent("oupdate", person)
          end
        )
    end
    raiseEvent("oupdate", person)
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>assess</name>
					<packageName></packageName>
					<script>ar.assess =
  function(person, hp, maxhp)
    ar[person].maxhp = maxhp
    ar[person].hp = hp
    if ar.myclass == "priest" then
      if tonumber(maxhp) &gt; 0 then
        ar[person].pphit = 100 / 4
      end
      if tonumber(maxhp) &gt;= 4300 then
        ar[person].pphit = 100 / 5
      end
      if tonumber(maxhp) &gt;= 5786 then
        ar[person].pphit = 100 / 6
      end
      if tonumber(maxhp) &gt;= 7642 then
        ar[person].pphit = 100 / 7
      end
    end
    if ar.myclass == "jester" then
      if tonumber(maxhp) &gt; 0 then
        ar[person].pphit = 100 / 5
      end
      if tonumber(maxhp) &gt;= 4780 then
        ar[person].pphit = 100 / 6
      end
      if tonumber(maxhp) &gt;= 6023 then
        ar[person].pphit = 100 / 7
      end
      if tonumber(maxhp) &gt;= 7932 then
        ar[person].pphit = 100 / 8
      end
    end
    if ar.myclass == "paladin" then
      brkl = ((7 * maxhp) / (400 - 130)) + ((17 / 8) * (130 + 10))
      brkl = maxhp / brkl
      ar[person].pphit = 100 / brkl
      if math.ceil(100 / ar[person].pphit) * ar[person].pphit &lt; 101.16 then
        ar[person].pphit = 100 / (math.ceil(100 / ar[person].pphit) + .5)
      end
    end
    line = getCurrentLine()
    if ar.myclass == "paladin" and ar[person].hp / ar[person].maxhp &lt; .30 then
      selectString(line, 1)
      setFgColor(255, 0, 0)
      setUnderline(true)
      setBold(true)
      resetFormat()
    end
    line = nil
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>target is</name>
					<packageName></packageName>
					<script>ar.targetis =
  function(person, aff)
    if ar[person].affs[aff] ~= nil then
      return true
    else
      return false
    end
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>bleed counter</name>
					<packageName></packageName>
					<script>ar.bleedcounter =
  function(person, bleed)
    if ar.targetis(person, "haemophilia") == true then
      ar[person].bleeding = ar[person].bleeding + bleed
      ar.sysecho(target .. "&lt;red&gt; BLEED " .. ar[person].bleeding)
    end
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>echos</name>
					<packageName></packageName>
					<script>ar.affecho =
  function(person, aff)
    cecho("&lt;red&gt;" .. person .. ": &lt;purple&gt;" .. aff)
  end
ar.btrackecho =
  function(person, aff)
    cecho("&lt;yellow&gt;BACKTRACKED&lt;red&gt; " .. person .. "&lt;purple&gt; " .. aff)
  end
ar.cureecho =
  function(person, cure)
  
    cecho("&lt;red&gt;" .. person .. " CURED: &lt;purple&gt;" .. cure)
  end
ar.sysecho =
  function(echo)
    cecho("&lt;red&gt;[&lt;purple&gt;AR&lt;red&gt;]&lt;gold&gt;: " .. echo)
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>check prios</name>
					<packageName></packageName>
					<script>ar.checkprios =
  function(person, cure)
    if ar[person].cures[1] ~= "passive" or ar[person].cures[1] ~= "tree" then
      if ar.myclass == "psion" then
        if ar.targetis(person, "paralysis") and ar.targetis(person, "haemophilia") then
          if cure == "ferrum" or cure == "ginseng" then
            ar[person].poverh = false
          end
        end
        if ar.targetis(person, "asthma") and ar.targetis(person, "haemophilia") then
          if cure == "ferrum" or cure == "ginseng" then
            ar[person].aoverh = false
          elseif cure == "aurum" or cure == "kelp" then
            ar[person].aoverh = true
          end
        end
      end
      if ar.myclass == "shaman" then
        if ar[person].affs.paralysis == 100 and ar.targetis(person, "asthma") then
          if cure == "kelp" or cure == "aurum" then
            ar[person].aoverp = true
          end
          if cure == "magnesium" or cure == "bloodroot" then
            ar[person].aoverp = false
          end
        end
      end
    end
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>count</name>
					<packageName></packageName>
					<script>ar.count =
  function(person, affs)
    local count = 0
    for aff in string.gmatch(affs, "%w+") do
      if table.contains(ar[person].affs, aff) then
        count = count + ar[person].affs[aff]
      end
    end
    return count / 100
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>reset</name>
					<packageName></packageName>
					<script>ar.reset =
  function(person)
    ar[person].affs = {}
    for k, _ in pairs(ar[person].limbs) do
      ar[person].limbs[k] = 0
    end
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>lock echos</name>
					<packageName></packageName>
					<script>ar.lockedechos =
  function()
    if
      ar.targetis(target, "asthma") and
      ar.targetis(target, "slickness") and
      ar.targetis(target, "anorexia") and
      ar.targetis(target, "impatience") == false
    then
      ar[target].focuslocked = true
    else
      ar[target].focuslocked = false
    end
    if
      ar.targetis(target, "asthma") and
      ar.targetis(target, "slickness") and
      ar.targetis(target, "anorexia") == false
    then
      ar[target].atfork = true
    else
      ar[target].atfork = false
    end
  end
registerAnonymousEventHandler("oupdate", "ar.lockedechos")</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>change stack</name>
					<packageName></packageName>
					<script>ar.changestack =
  function(stack)
    if stack ~= ar.stack then
      ar.laststack = ar.stack
      ar.stack = stack
      ar.sysecho("CHANGED STACK TO " .. stack)
      raiseEvent("stackchange")
    end
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>update</name>
					<packageName></packageName>
					<script>ar.oupdate =
  function(_, person)
    if ar[person] then
      if table.is_empty(ar[person].affs) then
        return
      else
        for k, v in pairs(ar[person].affs) do
          if ar[person].affs[k] &gt; 100 then
            ar[person].affs[k] = 100
          end
          if ar[person].affs[k] &lt; ar.afftolerance then
            ar[person].affs[k] = nil
          end
        end
        total = 0
        for _, v in pairs(ar[person].affs) do
          total = total + v
        end
        if total &lt; 100 then
          for k, _ in pairs(ar[person].affs) do
            ar[person].affs[k] = nil
          end
        end
      end
      for k, v in pairs(ar[person].cures) do
        if k &gt; 10 then
          table.remove(ar[person].cures, k)
        end
      end
      if ar.myclass == "paladin" and ar[person].limbtar then
        ar[ar.myclass].selection(ar.stack, ar[person].limbtar)
      else
        ar[ar.myclass].selection(ar.stack)
      end
    end
    if ar.myclass == "jester" and ar.probability(person, "stuttering") == 0 then
      ar[person].liberate = false
    end
  end
registerAnonymousEventHandler("oupdate", "ar.oupdate")</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>add</name>
					<packageName></packageName>
					<script>ar.addaff =
  function(person, aff, line)
    if not ar[person] then
      ar.targetsetup(person)
    end
    moveCursor(0, line)
    prefix("&lt;red&gt;|", cecho)
    moveCursorEnd()
    affstring = ""
    for afls in string.gmatch(aff, "(%w+)", "%1") do
      if afls == "sensitivity" and ar[person].defs.deaf == true then
        ar[person].defs.deaf = false
        affstring = affstring .. "&lt;blue&gt;UNDEAF "
      else
        ar[person].affs[afls] = 100
        affstring =
          tostring(affstring .. ar.affcolors(afls) .. string.upper(ar.affshortnames[afls]) .. " ")
      end
    end
    moveCursor(0, line)
    string.cut(affstring, string.len(affstring) - 2)
    prefix(affstring, cecho)
    moveCursorEnd()
    raiseEvent("oupdate", person)
    affstring = nil
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>target</name>
					<packageName></packageName>
					<script>ar.target.func =
  function(targets)
    for _, v in pairs(ar.targetlist) do
      if ar.target.highlight[v] then
        killTrigger(ar.target.highlight[v])
      end
    end
    ar.targetlist = {}
    for trg in string.gmatch(targets, "(%w+)", "%1") do
      trg = string.title(trg)
      if not ar[trg] then
        ar.targetsetup(trg)
      end
      if table.contains(ar.targetlist, trg) == false then
        table.insert(ar.targetlist, trg)
      end
      send("enemy " .. trg)
    end
    for _, v in pairs(ar.targetlist) do
      ar.target.highlight[v] =
        tempTrigger(v, [[selectString("]] .. v .. [[", 1) fg("red") deselect() resetFormat()]])
    end
    send("PT TARGET LIST: " .. table.concat(ar.targetlist, ", "))
    target = ar.targetlist[1]
    send("PT TARGET " .. target)
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>discern</name>
					<packageName></packageName>
					<script>ar.discern =
  function(person, arg)
    local bleeding = 0
    if
      arg == "You observe a small amount of blood trickling from minor wounds on " ..
      person ..
      "'s body."
    then
      bleeding = 100
    end
    if arg == "You observe thin red rivulets of blood dripping from " .. target .. "'s wounds." then
      bleeding = 200
    end
    if arg == "You observe thin red rivulets of blood dripping from " .. target .. "'s wounds." then
      bleeding = 300
    end
    if arg == "You observe free-flowing blood streaming from " .. target .. "'s wounds." then
      bleeding = 400
    end
    if arg == "You observe great gouts of blood spurting from " .. target .. "'s many wounds." then
      bleeding = 500
    end
    if arg == "You observe that the wounds of " .. target .. " are bleeding most severely." then
      bleeding = 600
    end
    if
      arg == "You observe heavy torrents of lifeblood spilling from " ..
      target ..
      "'s near-fatal wounds."
    then
      bleeding = 700
    end
    if
      arg == "You observe great rivers of blood running from the open wounds of " .. target .. "."
    then
      bleeding = 800
    end
    if arg == "You observe arterial spray gushing from the open wounds of " .. target .. "." then
      bleeding = 900
    end
    if arg == "You observe that " .. target .. " will shortly bleed to death." then
      bleeding = 1000
    end
    if math.floor(bleeding / 100) &lt; math.floor(ar[person].bleeding / 100) and bleeding &lt; 1000 then
      ar.backtrack(person, "haemophilia")
    end
    return bleeding
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>contemplate</name>
					<packageName></packageName>
					<script>ar.contemplate =
  function(person, mp, maxmp)
    ar[person].maxmp = maxmp
    ar[person].mp = mp
    line = getCurrentLine()
    if ar.myclass == "priest" and ar[person].mp / ar[person].maxmp &lt; .5 then
      selectString(line, 1)
      setFgColor(255, 0, 0)
      setUnderline(true)
      setBold(true)
      resetFormat()
    end
    line = nil
  end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>timer</name>
					<packageName></packageName>
					<script>ar.timer =
  function(who, time, what, aff)
    ar[who].timers[what] =
      tempTimer(
        tonumber(time),
        function()
          ar[who].affs[aff] = nil
          ar[who].timers[what] = nil
        end
      )
  end</script>
					<eventHandlerList />
				</Script>
			</ScriptGroup>
			<ScriptGroup isActive="yes" isFolder="yes">
				<name>anti-illusion</name>
				<packageName></packageName>
				<script>ar.ai =
  function(person, arg)
    if ar.illusion == true then
      ar.illusion = false
      return
    else
      if arg == "shield" then
        if ar[person].bals.baleq == true and ar[person].affs.prone == nil then
          ar[person].defs.shield = true
        end
        raiseEvent("oupdate", person)
      end
    end
  end</script>
				<eventHandlerList />
			</ScriptGroup>
		</ScriptGroup>
	</ScriptPackage>
	<KeyPackage />
	<VariablePackage>
		<HiddenVariables />
	</VariablePackage>
</MudletPackage>
