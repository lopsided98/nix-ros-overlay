
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-moveit-resources-fanuc-description";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/humble/moveit_resources_fanuc_description/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "8a4cb78d5e11e83c10aab085cb4d29bd40661c4acd002ccf370b8f6ec4a4051a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Fanuc Resources used for MoveIt testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
