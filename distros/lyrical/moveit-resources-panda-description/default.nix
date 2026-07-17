
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-lyrical-moveit-resources-panda-description";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/lyrical/moveit_resources_panda_description/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "0310a85681132a352fa5d6f01bf858ee79af64e2c3feb3a03db12007159ba6f9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "panda Resources used for MoveIt testing";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
