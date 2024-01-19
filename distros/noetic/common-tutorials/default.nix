
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-tutorials, catkin, nodelet-tutorial-math, pluginlib-tutorials, turtle-actionlib }:
buildRosPackage {
  pname = "ros-noetic-common-tutorials";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_tutorials-release/archive/release/noetic/common_tutorials/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "85949cb65616ef22c9134fddb9d0e3a8c0242bb4077061aa4d0112288bf02315";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib-tutorials nodelet-tutorial-math pluginlib-tutorials turtle-actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage that contains common tutorials'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
