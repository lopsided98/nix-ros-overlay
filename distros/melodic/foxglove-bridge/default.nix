
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asio, catkin, gtest, nlohmann_json, nodelet, openssl, ros-babel-fish, ros-environment, roscpp, rosgraph-msgs, roslib, rostest, rosunit, std-msgs, websocketpp }:
buildRosPackage {
  pname = "ros-melodic-foxglove-bridge";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/foxglove/ros_foxglove_bridge-release/archive/release/melodic/foxglove_bridge/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "bff9c1a2651cacd73e4020a5412bf4cb7dd6043d0c3b2de84862a6c635f15028";
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
