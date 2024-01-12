
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-iron-moveit-resources-pr2-description";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/iron/moveit_resources_pr2_description/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "3bc119184cf46407de9046f2e9df13f785ce22da40580cc6ccf6d17ee7b0966e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PR2 Resources used for MoveIt! testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
