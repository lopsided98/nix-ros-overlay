
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, rosconsole, sensor-msgs, catkin, roscpp, nodelet }:
buildRosPackage {
  pname = "ros-melodic-laser-proc";
  version = "0.1.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/laser_proc-release/archive/release/melodic/laser_proc/0.1.5-0.tar.gz;
    sha256 = "bd596ebcfc3016970ba1c6abcd0d8c550e9b96a19ec6ab23ec8f5f3bc0f3d7c5";
  };

  buildInputs = [ rosconsole pluginlib sensor-msgs nodelet roscpp ];
  propagatedBuildInputs = [ rosconsole pluginlib sensor-msgs nodelet roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''laser_proc'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
