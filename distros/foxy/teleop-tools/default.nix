
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joy-teleop, key-teleop, teleop-tools-msgs }:
buildRosPackage {
  pname = "ros-foxy-teleop-tools";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/foxy/teleop_tools/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "a0c54c9ed6f818e8b5c0e12856ad1d74916be73a943e14be8b9e941e2b933a57";
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
