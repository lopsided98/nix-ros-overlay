
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joy-teleop, key-teleop, teleop-tools-msgs }:
buildRosPackage {
  pname = "ros-jazzy-teleop-tools";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/jazzy/teleop_tools/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "06f72893a2717757b7f137c54c16bd16d013b3652ffae9c14c55fc00ddc11d8d";
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
