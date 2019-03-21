
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, liblapack, moveit-core, tf-conversions, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rs-ikfast-plugin";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/rs_ikfast_plugin/1.0.0-0.tar.gz;
    sha256 = "6922ad5e543fa7e286f237a08ed8efc02b07ff098f5650b95ecb19565d83ad87";
  };

  propagatedBuildInputs = [ liblapack moveit-core pluginlib tf-conversions roscpp ];
  nativeBuildInputs = [ liblapack moveit-core pluginlib tf-conversions catkin roscpp ];

  meta = {
    description = ''The rs_ikfast_plugin package'';
    #license = lib.licenses.BSD;
  };
}
