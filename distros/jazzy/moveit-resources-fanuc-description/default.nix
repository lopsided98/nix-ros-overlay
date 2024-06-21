
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-moveit-resources-fanuc-description";
  version = "3.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/jazzy/moveit_resources_fanuc_description/3.0.0-3.tar.gz";
    name = "3.0.0-3.tar.gz";
    sha256 = "eee9e88836f462cde31ecdaae5d66b1304174421466108b115173e6a95c42c96";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Fanuc Resources used for MoveIt testing";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
