
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joy-teleop, key-teleop, teleop-tools-msgs }:
buildRosPackage {
  pname = "ros-humble-teleop-tools";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/humble/teleop_tools/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "6c496fa73fb85214101b875dfb84576170b51e6a3f3e49bfaf82d092a032c8ad";
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
