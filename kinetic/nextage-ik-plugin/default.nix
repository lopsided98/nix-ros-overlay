
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, liblapack, moveit-core, tf-conversions, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-nextage-ik-plugin";
  version = "0.8.4";

  src = fetchurl {
    url = https://github.com/tork-a/rtmros_nextage-release/archive/release/kinetic/nextage_ik_plugin/0.8.4-0.tar.gz;
    sha256 = "143479a522059085716a089c6292eacf4c777ed39f689c70e2cb4b8dbd57d8f9";
  };

  buildInputs = [ pluginlib liblapack moveit-core tf-conversions roscpp ];
  propagatedBuildInputs = [ pluginlib liblapack moveit-core tf-conversions roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''IKFast package for NEXTAGE Open'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
