
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-moveit-resources-pr2-description";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit_resources-release/archive/release/foxy/moveit_resources_pr2_description/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "cf66c71e927f45029be79860bbdae663a77dab9c60164cc41c08592351de8663";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PR2 Resources used for MoveIt! testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
