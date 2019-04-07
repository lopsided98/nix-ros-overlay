
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, boost, libyamlcpp, catkin, roslib, robotis-math, eigen, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ati-ft-sensor";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/ati_ft_sensor/0.2.0-0.tar.gz;
    sha256 = "93bbb0f85950aa050074046de3e5f7e3f136bafddd423034bda56f1ce09fa35b";
  };

  buildInputs = [ roslib robotis-math cmake-modules boost eigen libyamlcpp roscpp geometry-msgs ];
  propagatedBuildInputs = [ roslib robotis-math cmake-modules boost eigen libyamlcpp roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a library for using ATI's transducer.
    This package describes basic functions for sensing force and torque.
    We provide some functions for converting and scaling.'';
    #license = lib.licenses.Apache 2.0;
  };
}
