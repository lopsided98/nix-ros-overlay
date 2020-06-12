
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, gazebo-plugins, gazebo-ros, gazebo-ros-control, gazebo-ros-pkgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rr-openrover-simulation";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/kinetic/rr_openrover_simulation/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "19d32ca6996f2d77edee8c07f56fb492e86011e876d36faf54bb48a7fac0bd04";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-msgs gazebo-plugins gazebo-ros gazebo-ros-control gazebo-ros-pkgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rr_openrover_simulation package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
