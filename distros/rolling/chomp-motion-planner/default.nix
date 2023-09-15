
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-common, moveit-core, rclcpp, rsl, trajectory-msgs }:
buildRosPackage {
  pname = "ros-rolling-chomp-motion-planner";
  version = "2.8.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/chomp_motion_planner/2.8.0-2.tar.gz";
    name = "2.8.0-2.tar.gz";
    sha256 = "44739528137d0fc866fcbca076e393b1f84a4f8a01cf3a830d3d2d5406915ef4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-common moveit-core rclcpp rsl trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''chomp_motion_planner'';
    license = with lib.licenses; [ bsd3 ];
  };
}
