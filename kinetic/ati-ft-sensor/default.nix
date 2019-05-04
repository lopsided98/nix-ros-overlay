
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, boost, libyamlcpp, catkin, roscpp, robotis-math, eigen, roslib, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ati-ft-sensor";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/ati_ft_sensor/0.2.0-0.tar.gz;
    sha256 = "93bbb0f85950aa050074046de3e5f7e3f136bafddd423034bda56f1ce09fa35b";
  };

  buildInputs = [ cmake-modules boost libyamlcpp roslib robotis-math eigen roscpp geometry-msgs ];
  propagatedBuildInputs = [ cmake-modules boost libyamlcpp roslib robotis-math eigen roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a library for using ATI's transducer.
    This package describes basic functions for sensing force and torque.
    We provide some functions for converting and scaling.'';
    license = with lib.licenses; [ asl20 ];
  };
}
