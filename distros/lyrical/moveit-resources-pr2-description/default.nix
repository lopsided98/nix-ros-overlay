
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-lyrical-moveit-resources-pr2-description";
  version = "3.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/lyrical/moveit_resources_pr2_description/3.1.1-3.tar.gz";
    name = "3.1.1-3.tar.gz";
    sha256 = "f36473ced612a6bdabef3bbb232446328fb7fe6f8464881a7a5d85dcb428eff8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PR2 Resources used for MoveIt! testing";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
