
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libyamlcpp, robotis-controller-msgs, roscpp, roslib, std-msgs, thormang3-walking-module-msgs }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-walking-demo";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-PPC-release/archive/release/kinetic/thormang3_walking_demo/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "60b4736ef56b4423262ccdca7f0768eeacb77a3734b58fd17676a0f1cbc8d358";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libyamlcpp robotis-controller-msgs roscpp roslib std-msgs thormang3-walking-module-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The thormang3_walking_demo package
    This package describes how to use thormang3_walking_module.'';
    license = with lib.licenses; [ asl20 ];
  };
}
