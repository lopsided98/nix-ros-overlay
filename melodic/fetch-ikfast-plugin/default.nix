
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, liblapack, moveit-core, tf-conversions, roscpp }:
buildRosPackage {
  pname = "ros-melodic-fetch-ikfast-plugin";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_ikfast_plugin/0.8.0-0.tar.gz;
    sha256 = "1a89ad6b1e5c8c0c0ece9d1ac65861ee4e5654eed95361feceb152ffca78d80f";
  };

  propagatedBuildInputs = [ liblapack moveit-core pluginlib tf-conversions roscpp ];
  nativeBuildInputs = [ liblapack moveit-core pluginlib tf-conversions catkin roscpp ];

  meta = {
    description = ''Kinematics plugin for Fetch robot, generated through IKFast'';
    #license = lib.licenses.Apache2;
  };
}
