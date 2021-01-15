
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-kinetic-futaba-serial-servo";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/raspberrypigibbon/raspigibbon_ros-release/archive/release/kinetic/futaba_serial_servo/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "9498f9d91ff377a484fd4ba85b80ff1a070a3c21f5cb116f30fa61bda010ca75";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.pyserial rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The futaba_serial_servo package'';
    license = with lib.licenses; [ mit ];
  };
}
