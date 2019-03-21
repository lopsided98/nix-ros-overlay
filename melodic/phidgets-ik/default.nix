
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, phidgets-api, tf, sensor-msgs, catkin, message-generation, message-runtime, nodelet, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-phidgets-ik";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/melodic/phidgets_ik/0.7.7-0.tar.gz;
    sha256 = "961d4102b53a0c33873c0cf8ac376d3bebe6e54f636c461600619b379d52fec7";
  };

  propagatedBuildInputs = [ phidgets-api message-runtime nodelet geometry-msgs std-msgs sensor-msgs tf roscpp ];
  nativeBuildInputs = [ phidgets-api tf sensor-msgs catkin roscpp message-generation std-msgs nodelet geometry-msgs ];

  meta = {
    description = ''Driver for the Phidgets InterfaceKit devices'';
    #license = lib.licenses.BSD;
  };
}
