
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robotis-controller-msgs, message-generation, geometry-msgs, std-msgs, thormang3-walking-module-msgs, cmake-modules, roslib, catkin, eigen, roscpp, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-foot-step-generator";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-OPC-release/archive/release/kinetic/thormang3_foot_step_generator/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "4b16dda0ceab0af65050e431a44fe7362c45df60603113bc20b4392d24e00265";
  };

  buildType = "catkin";
  buildInputs = [ robotis-controller-msgs geometry-msgs std-msgs thormang3-walking-module-msgs cmake-modules roslib eigen roscpp message-generation ];
  propagatedBuildInputs = [ robotis-controller-msgs geometry-msgs std-msgs thormang3-walking-module-msgs cmake-modules roslib eigen roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides foot step generation for the thormang3'';
    license = with lib.licenses; [ asl20 ];
  };
}
