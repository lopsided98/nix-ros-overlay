
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, liblapack, moveit-core, pluginlib, roscpp, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-khi-rs-ikfast-plugin";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_rs_ikfast_plugin/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "f38eeb5fe9d9ed489432cdab4465fd90105bf0855dca96de55bfda398c3a2004";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ liblapack moveit-core pluginlib roscpp tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_rs_ikfast_plugin package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
