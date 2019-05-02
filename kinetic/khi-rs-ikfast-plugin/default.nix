
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, liblapack, moveit-core, tf-conversions, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-khi-rs-ikfast-plugin";
  version = "1.1.1-r1";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_rs_ikfast_plugin/1.1.1-1.tar.gz;
    sha256 = "8a48b0f3af3014306492b445ffe692919e052e03f0fd2df40d951f7ac075b2d8";
  };

  buildInputs = [ liblapack moveit-core pluginlib tf-conversions roscpp ];
  propagatedBuildInputs = [ liblapack moveit-core pluginlib tf-conversions roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_rs_ikfast_plugin package'';
    #license = lib.licenses.BSD;
  };
}
