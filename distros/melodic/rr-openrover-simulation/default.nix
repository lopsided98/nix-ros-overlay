
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, gazebo-plugins, gazebo-ros, gazebo-ros-control, gazebo-ros-pkgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rr-openrover-simulation";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/melodic/rr_openrover_simulation/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "b08f5b97f14c600060f59a48f66c22f5b5233b6d11c130fea1a073184871eadf";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-msgs gazebo-plugins gazebo-ros gazebo-ros-control gazebo-ros-pkgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rr_openrover_simulation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
