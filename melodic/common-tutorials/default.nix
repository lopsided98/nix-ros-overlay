
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtle-actionlib, nodelet-tutorial-math, catkin, pluginlib-tutorials, actionlib-tutorials }:
buildRosPackage {
  pname = "ros-melodic-common-tutorials";
  version = "0.1.11";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_tutorials-release/archive/release/melodic/common_tutorials/0.1.11-0.tar.gz";
    name = "0.1.11-0.tar.gz";
    sha256 = "a74b72d318a6002dcee5e39472587f5fbe70741e93e71fac242b4ad60b78d9d0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet-tutorial-math pluginlib-tutorials actionlib-tutorials turtle-actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage that contains common tutorials'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
