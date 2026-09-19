
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, backward-ros }:
buildRosPackage {
  pname = "ros-rolling-moveit-common";
  version = "2.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_common/2.15.2-1.tar.gz";
    name = "2.15.2-1.tar.gz";
    sha256 = "e2026b304c6b630e2801d2e0f6f4776db54fc3bc9d52ec24e254cbfcbf93ceb2";
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
