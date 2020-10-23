
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joy-teleop, key-teleop, teleop-tools-msgs }:
buildRosPackage {
  pname = "ros-foxy-teleop-tools";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/foxy/teleop_tools/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "37a241d5e4ac9ab35dfde8d4d30729db83ba7cf0cb20a789cd7641d8e314e01f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ joy-teleop key-teleop teleop-tools-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A set of generic teleoperation tools for any robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
