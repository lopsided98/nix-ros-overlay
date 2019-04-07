
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, thormang3-walking-module-msgs, catkin, roscpp, roslib, message-generation, message-runtime, eigen, std-msgs, robotis-controller-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-foot-step-generator";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-OPC-release/archive/release/kinetic/thormang3_foot_step_generator/0.3.0-0.tar.gz;
    sha256 = "4b16dda0ceab0af65050e431a44fe7362c45df60603113bc20b4392d24e00265";
  };

  buildInputs = [ cmake-modules geometry-msgs roscpp robotis-controller-msgs message-generation eigen std-msgs roslib thormang3-walking-module-msgs ];
  propagatedBuildInputs = [ cmake-modules geometry-msgs roscpp robotis-controller-msgs message-runtime eigen std-msgs roslib thormang3-walking-module-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides foot step generation for the thormang3'';
    #license = lib.licenses.Apache 2.0;
  };
}
