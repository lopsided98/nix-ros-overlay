
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, liblapack, moveit-core, tf-conversions, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-khi-duaro-ikfast-plugin";
  version = "1.1.0-r1";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_duaro_ikfast_plugin/1.1.0-1.tar.gz;
    sha256 = "689fb200060386b4bbaedc41defa50f93b46b2c4d12afbdf2c4e17b9481bd3dc";
  };

  buildInputs = [ liblapack moveit-core pluginlib tf-conversions roscpp ];
  propagatedBuildInputs = [ liblapack moveit-core pluginlib tf-conversions roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_duaro_ikfast_plugin package'';
    #license = lib.licenses.BSD;
  };
}
