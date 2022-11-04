
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-manipulators }:
buildRosPackage {
  pname = "ros-melodic-ecl-manipulation";
  version = "0.60.3";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_manipulation-release/archive/release/melodic/ecl_manipulation/0.60.3-0.tar.gz";
    name = "0.60.3-0.tar.gz";
    sha256 = "d8ab07c3933af9e3633c323a372ed18faa71d6c798769e2a9ce96175b5adb62b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-manipulators ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Includes basic manipulation related structures as well as a few 
    algorithms currently used at Yujin Robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
