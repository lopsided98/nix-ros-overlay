
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joy-teleop, key-teleop, teleop-tools-msgs }:
buildRosPackage {
  pname = "ros-kilted-teleop-tools";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/kilted/teleop_tools/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "94b41f414b0db341492db931d6b839fe2cd9c02de3754ee7e00b5c10c568381e";
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
