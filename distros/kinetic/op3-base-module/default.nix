
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, eigen, geometry-msgs, libyamlcpp, op3-kinematics-dynamics, robotis-controller-msgs, robotis-device, robotis-framework-common, robotis-math, roscpp, roslib, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-op3-base-module";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/op3_base_module/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "1fc6ab0e6efe480f8a14a4e7bf9b40144b9750ae1d2475266b5e72d8847a872a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cmake-modules eigen geometry-msgs libyamlcpp op3-kinematics-dynamics robotis-controller-msgs robotis-device robotis-framework-common robotis-math roscpp roslib std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_base_module package'';
    license = with lib.licenses; [ asl20 ];
  };
}
