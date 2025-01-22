{...}: {
	programs.git = {
		enable = true;
		signing = {
			signByDefault = true;
			key = "56A60775C714FE76";
		};
		userName = "Nguyen Minh Tho";
		userEmail = "definedentity@proton.me";
	};
}
