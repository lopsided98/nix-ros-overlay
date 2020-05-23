
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-pluginlib-tutorials";
  version = "0.1.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_tutorials-release/archive/release/noetic/pluginlib_tutorials/0.1.12-1.tar.gz";
    name = "0.1.12-1.tar.gz";
    sha256 = "d5632ace1e8b9379f74c20adfad09d3c730af3a595ae9009a2bf199e400757de";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pluginlib_tutorials package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
