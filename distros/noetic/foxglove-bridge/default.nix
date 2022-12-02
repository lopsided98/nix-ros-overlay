
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asio, catkin, geometry-msgs, nlohmann_json, nodelet, openssl, ros-type-introspection, roscpp, roslib, rospack, rostest, rosunit, websocketpp }:
buildRosPackage {
  pname = "ros-noetic-foxglove-bridge";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/foxglove/ros_foxglove_bridge-release/archive/release/noetic/foxglove_bridge/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "a27eff0bb6a807f1f6992139d363dc6e2ceb0da6ce8004a4dce1657732def33f";
  };

  buildType = "catkin";
  buildInputs = [ asio catkin nlohmann_json rostest websocketpp ];
  checkInputs = [ geometry-msgs rosunit ];
  propagatedBuildInputs = [ nodelet openssl ros-type-introspection roscpp roslib rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Foxglove Bridge'';
    license = with lib.licenses; [ mit ];
  };
}
