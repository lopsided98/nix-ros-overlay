
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, roscpp, roslaunch, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-digital-inputs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_digital_inputs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "8f87cce624e7c7ca9bdc01cd95fd461e439c704d57e0b0eb3786de19f74e2d54";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet phidgets-api roscpp roslaunch std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets Digital Input devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
