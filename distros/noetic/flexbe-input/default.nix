
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, flexbe-msgs, python3Packages, rospy }:
buildRosPackage {
  pname = "ros-noetic-flexbe-input";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/flexbe/flexbe_behavior_engine-release/archive/release/noetic/flexbe_input/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "dd7e71e76e7ed885a4457bf0afad25cf09373ca5fabef88284a249c6f49d5f9e";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ actionlib flexbe-msgs python3Packages.six rospy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''flexbe_input enables to send data to onboard behavior when required.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
