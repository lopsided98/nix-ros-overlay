
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-common, moveit-core, rclcpp, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-chomp-motion-planner";
  version = "2.5.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/humble/chomp_motion_planner/2.5.10-1.tar.gz";
    name = "2.5.10-1.tar.gz";
    sha256 = "ec4b21e977b7331847c2b2733d5f2de89f7620905378e0445da75c0cafadf92f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-common moveit-core rclcpp trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "chomp_motion_planner";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
