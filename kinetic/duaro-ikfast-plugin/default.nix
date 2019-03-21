
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, liblapack, moveit-core, tf-conversions, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-duaro-ikfast-plugin";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/duaro_ikfast_plugin/1.0.0-0.tar.gz;
    sha256 = "156e01ed1c1bf8818287c88333f57d70a87e41dde731dd4eba3aeff5dcdd24fd";
  };

  propagatedBuildInputs = [ liblapack moveit-core pluginlib tf-conversions roscpp ];
  nativeBuildInputs = [ liblapack moveit-core pluginlib tf-conversions catkin roscpp ];

  meta = {
    description = ''The duaro_ikfast_plugin package'';
    #license = lib.licenses.BSD;
  };
}
