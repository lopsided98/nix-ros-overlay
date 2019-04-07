
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, phidgets-api, tf, sensor-msgs, catkin, message-generation, message-runtime, nodelet, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-phidgets-ik";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/kinetic/phidgets_ik/0.7.7-0.tar.gz;
    sha256 = "531b0ded46f165bc13d21fc04204af17dc3007ffce2556cc97d794d66d4c482a";
  };

  buildInputs = [ phidgets-api message-generation nodelet geometry-msgs std-msgs sensor-msgs tf roscpp ];
  propagatedBuildInputs = [ phidgets-api message-runtime nodelet geometry-msgs std-msgs sensor-msgs tf roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets InterfaceKit devices'';
    #license = lib.licenses.BSD;
  };
}
