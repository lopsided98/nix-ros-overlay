
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-moveit-resources-panda-description";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/rolling/moveit_resources_panda_description/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "890f6bfeefe3e903cf6e5cb1a49267d4be59f5920365791500cb6fee34e46b5b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''panda Resources used for MoveIt testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
