
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-moveit-resources-pr2-description";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/humble/moveit_resources_pr2_description/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "6aceda0debfdfaff5560094dbcd7f8fbcb54dc7541f94a3459f58157d02164f7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PR2 Resources used for MoveIt! testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
