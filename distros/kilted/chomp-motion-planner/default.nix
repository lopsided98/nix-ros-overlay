
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-common, moveit-core, rclcpp, rsl, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kilted-chomp-motion-planner";
  version = "2.13.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/kilted/chomp_motion_planner/2.13.2-2.tar.gz";
    name = "2.13.2-2.tar.gz";
    sha256 = "f723bc0820ea6046fcc2c4688bebe9aa19a2eddf195fff6f9d07b15a212062d8";
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
