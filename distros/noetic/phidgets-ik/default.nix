
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-analog-inputs, phidgets-digital-inputs, phidgets-digital-outputs, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-phidgets-ik";
  version = "1.0.8-r2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_ik/1.0.8-2.tar.gz";
    name = "1.0.8-2.tar.gz";
    sha256 = "a1d80e0e81dec854f28245cd2b15484c52c9d11b3dc1ae87ec72751cf5659b94";
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
