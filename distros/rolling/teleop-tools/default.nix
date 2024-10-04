
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joy-teleop, key-teleop, teleop-tools-msgs }:
buildRosPackage {
  pname = "ros-rolling-teleop-tools";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/rolling/teleop_tools/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "c5878d8166afe0a8c8c180c6bb687d5923f1724ddc902b2b00ccd56422edd0b5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joy-teleop key-teleop teleop-tools-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A set of generic teleoperation tools for any robot.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
