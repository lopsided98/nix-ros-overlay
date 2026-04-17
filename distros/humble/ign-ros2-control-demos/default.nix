
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, gz-ros2-control-demos, launch, launch-ros }:
buildRosPackage {
  pname = "ros-humble-ign-ros2-control-demos";
  version = "0.7.19-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/humble/ign_ros2_control_demos/0.7.19-1.tar.gz";
    name = "0.7.19-1.tar.gz";
    sha256 = "137d7635a67b137d6e0e172823830fba533638887becc11d517f799f400dd43e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp gz-ros2-control-demos launch launch-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shim package for gz_ros2_control_demos";
    license = with lib.licenses; [ asl20 ];
  };
}
