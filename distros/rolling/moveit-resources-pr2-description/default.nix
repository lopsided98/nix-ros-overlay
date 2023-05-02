
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-moveit-resources-pr2-description";
  version = "2.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/rolling/moveit_resources_pr2_description/2.0.6-2.tar.gz";
    name = "2.0.6-2.tar.gz";
    sha256 = "5bc4e82577ab32d582f294d1a39156b065b000571e019dc773e4c5fca790cf79";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PR2 Resources used for MoveIt! testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
