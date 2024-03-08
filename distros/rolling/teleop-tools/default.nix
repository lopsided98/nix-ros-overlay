
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joy-teleop, key-teleop, teleop-tools-msgs }:
buildRosPackage {
  pname = "ros-rolling-teleop-tools";
  version = "1.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/rolling/teleop_tools/1.5.0-2.tar.gz";
    name = "1.5.0-2.tar.gz";
    sha256 = "7efdc8acfd937a294cbd5ea017ebd1afa7166f74cd7de6e0e938d07c3c6367cd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joy-teleop key-teleop teleop-tools-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A set of generic teleoperation tools for any robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
