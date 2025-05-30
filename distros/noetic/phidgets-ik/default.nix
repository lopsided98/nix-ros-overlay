
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-analog-inputs, phidgets-digital-inputs, phidgets-digital-outputs, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-phidgets-ik";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_ik/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "5726dd59e3cb1925f5127bab7e106a98eac0e867de14141f794dfd911be69a4a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet phidgets-analog-inputs phidgets-digital-inputs phidgets-digital-outputs roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Driver for the Phidgets InterfaceKit devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
