
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, pluginlib, rosconsole, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-laser-proc";
  version = "0.1.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/laser_proc-release/archive/release/kinetic/laser_proc/0.1.4-0.tar.gz";
    name = "0.1.4-0.tar.gz";
    sha256 = "01f0f5a591192e3eff9f65c39649879b2d4adecf4c1985fa24ebd440c96b31b1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet pluginlib rosconsole roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''laser_proc'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
