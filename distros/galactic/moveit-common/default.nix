
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, backward-ros }:
buildRosPackage {
  pname = "ros-galactic-moveit-common";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/moveit_common/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "db1272768079f795cf3e23ec284c9492e937a5f1a93ec203aa2fcf8dd959b046";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ backward-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common support functionality used throughout MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
