
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-simple-controller-manager }:
buildRosPackage {
  pname = "ros-humble-moveit-plugins";
  version = "2.5.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/humble/moveit_plugins/2.5.3-1.tar.gz";
    name = "2.5.3-1.tar.gz";
    sha256 = "b1ffb725836575ba771b51c641d5d2d3b4f3509327ec2250c2704c38ec55214a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-simple-controller-manager ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for MoveIt plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
