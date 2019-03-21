
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-pluginlib-tutorials";
  version = "0.1.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/common_tutorials-release/archive/release/kinetic/pluginlib_tutorials/0.1.10-0.tar.gz;
    sha256 = "4b968e1a43bc77ad1dc9de30f540f594ad015e46badb49cc66782d9d457c4891";
  };

  propagatedBuildInputs = [ roscpp pluginlib ];
  nativeBuildInputs = [ catkin roscpp pluginlib ];

  meta = {
    description = ''The pluginlib_tutorials package'';
    #license = lib.licenses.BSD;
  };
}
