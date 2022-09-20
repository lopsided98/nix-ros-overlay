
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, liblapack, moveit-core, pluginlib, roscpp, tf2-eigen, tf2-kdl }:
buildRosPackage {
  pname = "ros-melodic-fetch-ikfast-plugin";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_ikfast_plugin/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "a0544a3c2d4320f714505bee02841026dddbdd25819836b0bafce8ef8e5d9e64";
  };

  buildType = "catkin";
  buildInputs = [ catkin tf2-eigen tf2-kdl ];
  propagatedBuildInputs = [ eigen-conversions liblapack moveit-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Kinematics plugin for Fetch robot, generated through IKFast'';
    license = with lib.licenses; [ asl20 ];
  };
}
