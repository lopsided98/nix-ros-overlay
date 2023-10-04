
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asio, catkin, gtest, nlohmann_json, nodelet, openssl, resource-retriever, ros-babel-fish, ros-environment, roscpp, rosgraph-msgs, roslib, rostest, rosunit, std-msgs, std-srvs, websocketpp, zlib }:
buildRosPackage {
  pname = "ros-noetic-foxglove-bridge";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/foxglove/ros_foxglove_bridge-release/archive/release/noetic/foxglove_bridge/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "23f61632c9b7b2842b6c9bc9e6c361d9c8ab5a0ff3503829c8a8069193f69ed0";
  };

  buildType = "catkin";
  buildInputs = [ asio catkin nlohmann_json ros-environment websocketpp ];
  checkInputs = [ gtest rostest rosunit std-msgs std-srvs ];
  propagatedBuildInputs = [ nodelet openssl resource-retriever ros-babel-fish roscpp rosgraph-msgs roslib zlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Foxglove Bridge'';
    license = with lib.licenses; [ mit ];
  };
}
