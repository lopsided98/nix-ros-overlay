
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, phidgets-msgs, roscpp, roslaunch, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-digital-outputs";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_digital_outputs/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "24267f25fd7866564d2bb5e6551eae348e7aa3abe2916ef374c9c6c15bb567e3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet phidgets-api phidgets-msgs roscpp roslaunch std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets Digital Output devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
