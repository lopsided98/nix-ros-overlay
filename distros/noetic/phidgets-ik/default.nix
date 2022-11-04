
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-analog-inputs, phidgets-digital-inputs, phidgets-digital-outputs, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-phidgets-ik";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_ik/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "277a898fd96e3313bf7537df81f03325b8b64df1498ae9afaafb180b0e8af4c0";
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
