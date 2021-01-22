
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, flexbe-msgs, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-input";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_input/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "867fd45f20b629fc3197571b7e3f13c935ee9dc738ce27813617e6a82dfd89da";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib flexbe-msgs pythonPackages.six rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_input enables to send data to onboard behavior when required.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
