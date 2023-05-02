
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, backward-ros }:
buildRosPackage {
  pname = "ros-rolling-moveit-common";
  version = "2.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_common/2.7.3-1.tar.gz";
    name = "2.7.3-1.tar.gz";
    sha256 = "7f9304bdfdc2d271e45da2e653890ccb7520f77d7c885315d43c560ef37a423f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ backward-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common support functionality used throughout MoveIt'';
    license = with lib.licenses; [ bsd3 ];
  };
}
