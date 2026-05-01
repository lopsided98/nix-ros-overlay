
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joy-teleop, key-teleop, teleop-tools-msgs }:
buildRosPackage {
  pname = "ros-lyrical-teleop-tools";
  version = "2.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/lyrical/teleop_tools/2.0.0-3.tar.gz";
    name = "2.0.0-3.tar.gz";
    sha256 = "c66ed3f870ade9eb1f732f42ad106dcf8d222579c0fa035cb2bcf21ed1db1333";
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
