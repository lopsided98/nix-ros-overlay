
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-moveit-resources-panda-description";
  version = "2.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/humble/moveit_resources_panda_description/2.0.7-1.tar.gz";
    name = "2.0.7-1.tar.gz";
    sha256 = "7891164f5b39eab9ae8b040c72b6c3f7c19465bd1b417a3a0cae4ffd3c46d360";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "panda Resources used for MoveIt testing";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
