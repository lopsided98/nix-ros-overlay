
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, liblapack, moveit-core, pluginlib, roscpp, tf2-eigen, tf2-kdl }:
buildRosPackage {
  pname = "ros-noetic-fetch-ikfast-plugin";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/noetic/fetch_ikfast_plugin/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "7f27ca168fe00fbd9a1e50dc5407bbf623d6a2cc54aa47b2876ff29707704242";
  };

  buildType = "catkin";
  buildInputs = [ tf2-eigen tf2-kdl ];
  propagatedBuildInputs = [ eigen-conversions liblapack moveit-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Kinematics plugin for Fetch robot, generated through IKFast'';
    license = with lib.licenses; [ asl20 ];
  };
}
