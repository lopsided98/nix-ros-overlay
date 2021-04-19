
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, phidgets-msgs, pluginlib, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-phidgets-ik";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/kinetic/phidgets_ik/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "8702d4c17785de93d1e91a099d58b87876c507d7fd696af99b460f515f28ea0a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet phidgets-api phidgets-msgs pluginlib roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets InterfaceKit devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
