
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, flexbe-msgs, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-melodic-flexbe-input";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_input/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "d22163e9914d7b21c0ddaaaf748f70ddd4a342c239cfb8504579ede742eb2b26";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib flexbe-msgs pythonPackages.six rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_input enables to send data to onboard behavior when required.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
