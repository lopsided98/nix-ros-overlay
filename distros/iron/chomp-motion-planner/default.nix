
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-common, moveit-core, rclcpp, rsl, trajectory-msgs }:
buildRosPackage {
  pname = "ros-iron-chomp-motion-planner";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/iron/chomp_motion_planner/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "898b6d3c447651ea16a3c3b5cfc87336afb1fee56d2f190751127df0110fff06";
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
