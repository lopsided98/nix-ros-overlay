
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rr-openrover-driver-msgs";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/melodic/rr_openrover_driver_msgs/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "809fd2071d04f447b256c6aa0cf07e1b9f83ee90b03e77a881e4388250891526";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rr_openrover_driver_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
