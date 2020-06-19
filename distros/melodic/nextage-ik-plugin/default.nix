
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, liblapack, moveit-core, pluginlib, roscpp, tf-conversions }:
buildRosPackage {
  pname = "ros-melodic-nextage-ik-plugin";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_nextage-release/archive/release/melodic/nextage_ik_plugin/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "47d7cebb7911853af2cdd42960780ba71d46a067d0ad531b8e40555b52ec300f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ liblapack moveit-core pluginlib roscpp tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''IKFast package for NEXTAGE Open'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
