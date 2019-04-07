
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, boost, geometry-msgs, libyamlcpp, catkin, roscpp, roslib, robotis-math, op3-kinematics-dynamics, eigen, std-msgs, robotis-device, robotis-controller-msgs, robotis-framework-common }:
buildRosPackage {
  pname = "ros-kinetic-op3-base-module";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/op3_base_module/0.2.1-0.tar.gz;
    sha256 = "1fc6ab0e6efe480f8a14a4e7bf9b40144b9750ae1d2475266b5e72d8847a872a";
  };

  buildInputs = [ cmake-modules boost geometry-msgs libyamlcpp roscpp roslib robotis-math op3-kinematics-dynamics eigen std-msgs robotis-device robotis-controller-msgs robotis-framework-common ];
  propagatedBuildInputs = [ cmake-modules boost geometry-msgs libyamlcpp roscpp roslib robotis-math op3-kinematics-dynamics eigen std-msgs robotis-device robotis-controller-msgs robotis-framework-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_base_module package'';
    #license = lib.licenses.Apache 2.0;
  };
}
