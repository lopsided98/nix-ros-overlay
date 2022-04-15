
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, liblapack, moveit-core, pluginlib, roscpp, tf-conversions }:
buildRosPackage {
  pname = "ros-noetic-khi-rs-ikfast-plugin";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/noetic/khi_rs_ikfast_plugin/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "ba133fc7343e832ac36593564aa79567291e050d9c5a4a72fe197517da6827b1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ liblapack moveit-core pluginlib roscpp tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_rs_ikfast_plugin package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
