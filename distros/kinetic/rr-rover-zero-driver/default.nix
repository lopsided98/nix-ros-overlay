
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, geometry-msgs, nav-msgs, python-orocos-kdl, pythonPackages, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rr-rover-zero-driver";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/kinetic/rr_rover_zero_driver/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "0818a636dadba1bf9bbd45a78cf1c1c61deee283f043b1cd6d26fc5b3579c4fd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-msgs geometry-msgs nav-msgs python-orocos-kdl pythonPackages.pyserial rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rover_zero_driver package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
