
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joy-teleop, key-teleop, teleop-tools-msgs }:
buildRosPackage {
  pname = "ros-dashing-teleop-tools";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/dashing/teleop_tools/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "2ff018eb2e76415e08eab89f9b0a973a58213cbfde24e2d2d8c778956c7cd12b";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ joy-teleop key-teleop teleop-tools-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A set of generic teleoperation tools for any robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
