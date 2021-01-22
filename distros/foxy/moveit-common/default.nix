
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-moveit-common";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_common/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "0b01eb17e3c4bc1ad9ab2735e0cffe17bae5ace132592a55a139b47de7855eb1";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common support functionality used throughout MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
