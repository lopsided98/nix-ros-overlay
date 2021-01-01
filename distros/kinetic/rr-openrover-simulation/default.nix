
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, gazebo-plugins, gazebo-ros, gazebo-ros-control, gazebo-ros-pkgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rr-openrover-simulation";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/kinetic/rr_openrover_simulation/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "0baaa3a6fa47db7c904983de95a0f4825feb4bf7f2b19fc6cdf67d19b3a3df06";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-msgs gazebo-plugins gazebo-ros gazebo-ros-control gazebo-ros-pkgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rr_openrover_simulation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
