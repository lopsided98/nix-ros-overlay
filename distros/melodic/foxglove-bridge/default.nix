
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asio, catkin, gtest, nlohmann_json, nodelet, openssl, ros-babel-fish, ros-environment, roscpp, rosgraph-msgs, roslib, rostest, rosunit, std-msgs, std-srvs, websocketpp, zlib }:
buildRosPackage {
  pname = "ros-melodic-foxglove-bridge";
  version = "0.5.3-r1";

  src = fetchurl {
    url = "https://github.com/foxglove/ros_foxglove_bridge-release/archive/release/melodic/foxglove_bridge/0.5.3-1.tar.gz";
    name = "0.5.3-1.tar.gz";
    sha256 = "25ee7cc2be47b14b3390912ebf3f0b244bd43e0964cc8137fd023772879aee13";
  };

  buildType = "catkin";
  buildInputs = [ asio catkin nlohmann_json ros-environment websocketpp ];
  checkInputs = [ gtest rostest rosunit std-msgs std-srvs ];
  propagatedBuildInputs = [ nodelet openssl ros-babel-fish roscpp rosgraph-msgs roslib zlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Foxglove Bridge'';
    license = with lib.licenses; [ mit ];
  };
}
