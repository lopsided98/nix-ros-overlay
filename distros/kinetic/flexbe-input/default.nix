
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, flexbe-msgs, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-input";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_input/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "c2a7a01393ecd040fc1c6776b94e150a376a0ba032a6fcc8005876301bb8c079";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib flexbe-msgs pythonPackages.six rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_input enables to send data to onboard behavior when required.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
