
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joy-teleop, key-teleop, teleop-tools-msgs }:
buildRosPackage {
  pname = "ros-rolling-teleop-tools";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/rolling/teleop_tools/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "8c01efb245693abf60cb657b65e1ff1b6eba0c3d17a56bd5f1a5f1bebac727f0";
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
