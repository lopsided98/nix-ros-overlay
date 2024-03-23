
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, backward-ros }:
buildRosPackage {
  pname = "ros-rolling-moveit-common";
  version = "2.9.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_common/2.9.0-2.tar.gz";
    name = "2.9.0-2.tar.gz";
    sha256 = "131de1ab3b16c4e0f46dcddc0c1ba967bb1f89848548844e722db7404deb109c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ backward-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Common support functionality used throughout MoveIt";
    license = with lib.licenses; [ bsd3 ];
  };
}
