
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-lyrical-moveit-resources-fanuc-description";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/lyrical/moveit_resources_fanuc_description/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "0e1b41d210115e60897f1f91140aef2bbdf38a0fe453c6a301d150fcb8b5f3e0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Fanuc Resources used for MoveIt testing";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
