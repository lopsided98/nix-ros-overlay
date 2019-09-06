
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, liblapack, moveit-core, tf-conversions, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-fetch-ikfast-plugin";
  version = "0.7.15";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/kinetic/fetch_ikfast_plugin/0.7.15-0.tar.gz";
    name = "0.7.15-0.tar.gz";
    sha256 = "a6548eb98a58c587bb9a2723969a93d5ff066a651cb1fbc560177bf30bc40988";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib liblapack moveit-core tf-conversions roscpp ];
  propagatedBuildInputs = [ pluginlib liblapack moveit-core tf-conversions roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Kinematics plugin for Fetch robot, generated through IKFast'';
    license = with lib.licenses; [ asl20 ];
  };
}
