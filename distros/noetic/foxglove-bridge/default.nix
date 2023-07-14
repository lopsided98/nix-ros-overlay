
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asio, catkin, gtest, nlohmann_json, nodelet, openssl, resource-retriever, ros-babel-fish, ros-environment, roscpp, rosgraph-msgs, roslib, rostest, rosunit, std-msgs, std-srvs, websocketpp, zlib }:
buildRosPackage {
  pname = "ros-noetic-foxglove-bridge";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/foxglove/ros_foxglove_bridge-release/archive/release/noetic/foxglove_bridge/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "82cfedd15960d064aab0aaf37e5fb05a1caf04638d88aa00251f62c450819d78";
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
