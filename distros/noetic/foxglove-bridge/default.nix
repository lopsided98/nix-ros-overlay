
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asio, catkin, gtest, nlohmann_json, nodelet, openssl, resource-retriever, ros-babel-fish, ros-environment, roscpp, rosgraph-msgs, roslib, rostest, rosunit, std-msgs, std-srvs, websocketpp, zlib }:
buildRosPackage {
  pname = "ros-noetic-foxglove-bridge";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/foxglove/ros_foxglove_bridge-release/archive/release/noetic/foxglove_bridge/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "06086c4aa808dd9f57c52f07d6cdf9fbd1d6dc9bd868c467113ac7a0cf8e8c9c";
  };

  buildType = "catkin";
  buildInputs = [ asio catkin nlohmann_json ros-environment websocketpp ];
  checkInputs = [ gtest rostest rosunit std-msgs std-srvs ];
  propagatedBuildInputs = [ nodelet openssl resource-retriever ros-babel-fish roscpp rosgraph-msgs roslib zlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS Foxglove Bridge";
    license = with lib.licenses; [ mit ];
  };
}
