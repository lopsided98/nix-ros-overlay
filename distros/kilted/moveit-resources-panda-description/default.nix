
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-kilted-moveit-resources-panda-description";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/kilted/moveit_resources_panda_description/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "207ef0c1dd3d93cab9e4dc52f67bd62222cf5916ebb2ab6e95c3d1faa4d50b51";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "panda Resources used for MoveIt testing";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
