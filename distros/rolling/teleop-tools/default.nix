
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joy-teleop, key-teleop, teleop-tools-msgs }:
buildRosPackage {
  pname = "ros-rolling-teleop-tools";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/rolling/teleop_tools/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "2938dd0ac829cc0fc58b56fe09da8bf1c14c766016330dd6b916a816ccea113c";
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
