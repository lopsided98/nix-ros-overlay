
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, liblapack, moveit-core, pluginlib, roscpp, tf-conversions }:
buildRosPackage {
  pname = "ros-melodic-nextage-ik-plugin";
  version = "0.8.6-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_nextage-release/archive/release/melodic/nextage_ik_plugin/0.8.6-2.tar.gz";
    name = "0.8.6-2.tar.gz";
    sha256 = "3b0cc08f63314cf443553181e6482f742c30fb74b18750c213a8d62ea0fce0a3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ liblapack moveit-core pluginlib roscpp tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''IKFast package for NEXTAGE Open'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
