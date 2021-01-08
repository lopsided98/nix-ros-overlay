
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-kinetic-dynamixel-driver";
  version = "0.4.1";

  src = fetchurl {
    url = "https://github.com/arebgun/dynamixel_motor-release/archive/release/kinetic/dynamixel_driver/0.4.1-0.tar.gz";
    name = "0.4.1-0.tar.gz";
    sha256 = "8066bc94c261d3df45d2d1f3447ecd988917a341dff0e151f92c8839b7ada5b7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-msgs pythonPackages.pyserial rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides low level IO for Robotis Dynamixel servos.
    Fully supports and was tested with AX-12, AX-18, RX-24, RX-28,
    MX-28, RX-64, EX-106 models. Hardware specific constants are
    defined for reading and writing information from/to Dynamixel
    servos. This low level package won't be used directly by most
    ROS users. The higher level dynamixel_controllers and specific
    robot joint controllers make use of this package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
