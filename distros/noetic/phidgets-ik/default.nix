
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-analog-inputs, phidgets-digital-inputs, phidgets-digital-outputs, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-phidgets-ik";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_ik/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "3e035d67786cb21822bc512aecc4464e932cfc2673e081e22895be8de2fddc58";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet phidgets-analog-inputs phidgets-digital-inputs phidgets-digital-outputs roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets InterfaceKit devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
