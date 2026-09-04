
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, backward-ros }:
buildRosPackage {
  pname = "ros-lyrical-moveit-common";
  version = "2.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_common/2.15.1-1.tar.gz";
    name = "2.15.1-1.tar.gz";
    sha256 = "8db87032b65c4d320d6e595e3a7f3165991277edf4cf8f6a188fc71d3b5af929";
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
