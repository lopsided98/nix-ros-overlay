
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, rosconsole, sensor-msgs, catkin, roscpp, nodelet }:
buildRosPackage {
  pname = "ros-lunar-laser-proc";
  version = "0.1.4-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/laser_proc-release/archive/release/lunar/laser_proc/0.1.4-1.tar.gz;
    sha256 = "198b4950b2f155b27366646be199618b82fb624e7e711daf1083867d86c68402";
  };

  buildInputs = [ rosconsole pluginlib sensor-msgs nodelet roscpp ];
  propagatedBuildInputs = [ rosconsole pluginlib sensor-msgs nodelet roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''laser_proc'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
