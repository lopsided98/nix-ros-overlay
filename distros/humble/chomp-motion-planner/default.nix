
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-common, moveit-core, rclcpp, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-chomp-motion-planner";
  version = "2.5.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/humble/chomp_motion_planner/2.5.9-1.tar.gz";
    name = "2.5.9-1.tar.gz";
    sha256 = "a4f83c9f1ce71489458cdfa4587b4c80dcea8d536620046535ac2201a2a48e12";
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
