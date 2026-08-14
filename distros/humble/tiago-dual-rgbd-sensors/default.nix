
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-tiago-dual-rgbd-sensors";
  version = "4.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_dual_navigation-release/archive/release/humble/tiago_dual_rgbd_sensors/4.12.0-1.tar.gz";
    name = "4.12.0-1.tar.gz";
    sha256 = "a30e0c9f88c91fc0521847831af4108c1a2110d2045733ad3d7f64b3b9194b0f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Launch files and scripts needed to bring up the ROS nodes of a TIAGo robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
