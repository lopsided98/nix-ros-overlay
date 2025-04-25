
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, backward-ros }:
buildRosPackage {
  pname = "ros-jazzy-moveit-common";
  version = "2.12.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit_common/2.12.3-1.tar.gz";
    name = "2.12.3-1.tar.gz";
    sha256 = "fc0bf5323471ba65ef56a38df5b1fedb7c8a50a5b960c0736e298defabc99445";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ backward-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Common support functionality used throughout MoveIt";
    license = with lib.licenses; [ bsd3 ];
  };
}
