
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, pluginlib, rosconsole, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-laser-proc";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/laser_proc-release/archive/release/noetic/laser_proc/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "5360596a9ded7aa37e3e8bac79473086631fce5968fa60c853e126c9edaa4486";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet pluginlib rosconsole roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''laser_proc'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
