
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asio, catkin, gtest, nlohmann_json, nodelet, openssl, ros-babel-fish, ros-environment, roscpp, rosgraph-msgs, roslib, rostest, rosunit, std-msgs, websocketpp }:
buildRosPackage {
  pname = "ros-noetic-foxglove-bridge";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/foxglove/ros_foxglove_bridge-release/archive/release/noetic/foxglove_bridge/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "abf7487e53c5a0e4d2c07b0bb38bfdd641c02fc87fb69e0123eca0e4939d2733";
  };

  buildType = "catkin";
  buildInputs = [ asio catkin nlohmann_json ros-environment websocketpp ];
  checkInputs = [ gtest rostest rosunit std-msgs ];
  propagatedBuildInputs = [ nodelet openssl ros-babel-fish roscpp rosgraph-msgs roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Foxglove Bridge'';
    license = with lib.licenses; [ mit ];
  };
}
