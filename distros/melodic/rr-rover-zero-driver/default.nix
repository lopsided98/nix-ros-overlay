
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, geometry-msgs, nav-msgs, python-orocos-kdl, pythonPackages, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rr-rover-zero-driver";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/melodic/rr_rover_zero_driver/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "50d742a89bea79ea48fdf795a04d2ce825d3fa2f01efa92dc1dcd6b175c4ebed";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-msgs geometry-msgs nav-msgs python-orocos-kdl pythonPackages.pyserial rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rover_zero_driver package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
