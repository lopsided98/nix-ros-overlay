
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, backward-ros }:
buildRosPackage {
  pname = "ros-rolling-moveit-common";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_common/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "d86cd5ef794e0fdf14af76b7ff6ea174a343e4bd0ddc18ca42b6744f3cb63d76";
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
