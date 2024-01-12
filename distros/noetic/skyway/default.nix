
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, message-generation, message-runtime, pluginlib, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-skyway";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ntt-t3/skyway_for_ros-release/archive/release/noetic/skyway/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "c3baf05be5cd3ae18e98d2dfa67bd543b3a9349bc7f6d9741e3844812d5af8ca";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ gtest rostest ];
  propagatedBuildInputs = [ message-runtime pluginlib roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for using SkyWay from ROS'';
    license = with lib.licenses; [ mit ];
  };
}
