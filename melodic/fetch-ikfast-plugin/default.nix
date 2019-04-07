
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, tf2-kdl, liblapack, moveit-core, tf2-eigen, eigen-conversions, roscpp }:
buildRosPackage {
  pname = "ros-melodic-fetch-ikfast-plugin";
  version = "0.8.1";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_ikfast_plugin/0.8.1-0.tar.gz;
    sha256 = "62c825a29e1ea77397875b05777eacde641a4a67ceba2c5b2f3ab161effeff67";
  };

  buildInputs = [ liblapack moveit-core pluginlib tf2-eigen eigen-conversions roscpp tf2-kdl ];
  propagatedBuildInputs = [ liblapack moveit-core pluginlib eigen-conversions roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Kinematics plugin for Fetch robot, generated through IKFast'';
    #license = lib.licenses.Apache2;
  };
}
