
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, liblapack, moveit-core, tf-conversions, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-khi-duaro-ikfast-plugin";
  version = "1.1.1-r1";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_duaro_ikfast_plugin/1.1.1-1.tar.gz;
    sha256 = "642672fba903bf87ce1d66a60a535b87cd0c2c7d90bd1bf536a94ef433818a91";
  };

  buildInputs = [ liblapack moveit-core pluginlib tf-conversions roscpp ];
  propagatedBuildInputs = [ liblapack moveit-core pluginlib tf-conversions roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_duaro_ikfast_plugin package'';
    #license = lib.licenses.BSD;
  };
}
