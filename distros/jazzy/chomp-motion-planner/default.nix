
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-common, moveit-core, rclcpp, rsl, trajectory-msgs }:
buildRosPackage {
  pname = "ros-jazzy-chomp-motion-planner";
  version = "2.12.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/chomp_motion_planner/2.12.2-1.tar.gz";
    name = "2.12.2-1.tar.gz";
    sha256 = "84e91c0ba2d053711efae250a0446c3c9339b86f62fe45ac4443d8df8dfe43f0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ moveit-common moveit-core rclcpp rsl trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "chomp_motion_planner";
    license = with lib.licenses; [ bsd3 ];
  };
}
