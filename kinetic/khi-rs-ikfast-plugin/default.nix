
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, liblapack, moveit-core, tf-conversions, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-khi-rs-ikfast-plugin";
  version = "1.1.0-r1";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_rs_ikfast_plugin/1.1.0-1.tar.gz;
    sha256 = "2d3225e34fb421d8f63323393139306fb00097eb62f03711d9e9bb2d0e525bf0";
  };

  buildInputs = [ liblapack moveit-core pluginlib tf-conversions roscpp ];
  propagatedBuildInputs = [ liblapack moveit-core pluginlib tf-conversions roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_rs_ikfast_plugin package'';
    #license = lib.licenses.BSD;
  };
}
