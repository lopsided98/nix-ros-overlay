
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-galactic-moveit-resources-pr2-description";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit_resources-release/archive/release/galactic/moveit_resources_pr2_description/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "4fc7f6309efc8473999c79e2b9ca351ceff6b4798a3843cd44c0c530616ab0f7";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PR2 Resources used for MoveIt! testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
