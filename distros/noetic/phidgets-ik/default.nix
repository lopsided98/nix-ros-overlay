
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-analog-inputs, phidgets-digital-inputs, phidgets-digital-outputs, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-phidgets-ik";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_ik/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "0e0e85629bb0480fa9ce35a5c1abce706c0347ae1880e6506f5875af427a4361";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet phidgets-analog-inputs phidgets-digital-inputs phidgets-digital-outputs roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets InterfaceKit devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
