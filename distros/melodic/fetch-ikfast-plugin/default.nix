
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, liblapack, moveit-core, pluginlib, roscpp, tf2-eigen, tf2-kdl }:
buildRosPackage {
  pname = "ros-melodic-fetch-ikfast-plugin";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_ikfast_plugin/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "24429d173975f72b6920d831762c727198d523f38dcd462c08beae779dc72643";
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
