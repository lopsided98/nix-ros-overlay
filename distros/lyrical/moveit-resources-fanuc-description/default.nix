
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-lyrical-moveit-resources-fanuc-description";
  version = "3.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/lyrical/moveit_resources_fanuc_description/3.1.1-3.tar.gz";
    name = "3.1.1-3.tar.gz";
    sha256 = "24f5e1672cc49b59ad3dd3767c7f16d1c6cc8cbf17083584fb36a89ab659e3e2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Fanuc Resources used for MoveIt testing";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
