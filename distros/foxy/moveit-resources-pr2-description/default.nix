
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-moveit-resources-pr2-description";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit_resources-release/archive/release/foxy/moveit_resources_pr2_description/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "44ba9b95331ba1f4660aa8e9babe36cf12c04c57406cb130b1b400b2eb2cb69b";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PR2 Resources used for MoveIt! testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
