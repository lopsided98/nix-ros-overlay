
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-manipulation-module-msgs";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-msgs-release/archive/release/kinetic/thormang3_manipulation_module_msgs/0.3.0-0.tar.gz;
    sha256 = "c0d067a46cdb30c3d2bcfe0f39e6dbd228b6fdeeca954dcebb8e81c2b3e16192";
  };

  buildInputs = [ std-msgs sensor-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs sensor-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a set of messages and services for using thormang3_manipulation_module.'';
    license = with lib.licenses; [ asl20 ];
  };
}
