
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-ncd-parser";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/scan_tools-release/archive/release/noetic/ncd_parser/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "f2adcebf58786903f0bf1251b30ce4d4f64d015597ed211de50932e64366a350";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ncd_parser package reads in .alog data files from the New College Dataset and broadcasts scan and odometry messages to ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
