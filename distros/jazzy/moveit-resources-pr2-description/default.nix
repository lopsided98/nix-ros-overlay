
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-moveit-resources-pr2-description";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/jazzy/moveit_resources_pr2_description/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "65dcccbaa4feefc7cbd3ee9ef179ce8d815a7fab3085db1d947b855335f78553";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PR2 Resources used for MoveIt! testing";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
