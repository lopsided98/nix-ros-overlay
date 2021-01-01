
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamixel-controllers, dynamixel-driver, dynamixel-msgs, dynamixel-tutorials }:
buildRosPackage {
  pname = "ros-kinetic-dynamixel-motor";
  version = "0.4.1";

  src = fetchurl {
    url = "https://github.com/arebgun/dynamixel_motor-release/archive/release/kinetic/dynamixel_motor/0.4.1-0.tar.gz";
    name = "0.4.1-0.tar.gz";
    sha256 = "6b3d9e1c1cbe77d56e54061870e7321525d9684941c18c30b837d93f2ebcec68";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamixel-controllers dynamixel-driver dynamixel-msgs dynamixel-tutorials ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack contains packages that are used to interface with Robotis
    Dynamixel line of servo motors. This stack was tested with and fully
    supports AX-12, AX-18, RX-24, RX-28, MX-28, RX-64, MX-64, EX-106 and
    MX-106 models.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
