
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, liblapack, moveit-core, pluginlib, roscpp, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-khi-rs-ikfast-plugin";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_rs_ikfast_plugin/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "ffa165109ab04e7363003d51e0b97e6dccd89c9adb92018c4487e6bdd7fe3f8e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ liblapack moveit-core pluginlib roscpp tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_rs_ikfast_plugin package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
