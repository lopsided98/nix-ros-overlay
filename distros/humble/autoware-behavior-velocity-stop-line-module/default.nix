
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-behavior-velocity-planner, autoware-behavior-velocity-planner-common, autoware-cmake, autoware-internal-planning-msgs, autoware-lint-common, autoware-motion-utils, autoware-route-handler, autoware-trajectory, autoware-utils-debug, autoware-utils-geometry, autoware-utils-rclcpp, eigen, eigen3-cmake-module, geometry-msgs, pluginlib, rclcpp, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-behavior-velocity-stop-line-module";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_behavior_velocity_stop_line_module/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "321d2d0157d49fde8498c6c390198f4ba5cc44394a51c200e30a07ae9cc09328";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-behavior-velocity-planner autoware-behavior-velocity-planner-common autoware-internal-planning-msgs autoware-motion-utils autoware-route-handler autoware-trajectory autoware-utils-debug autoware-utils-geometry autoware-utils-rclcpp eigen geometry-msgs pluginlib rclcpp tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "The autoware_behavior_velocity_stop_line_module package";
    license = with lib.licenses; [ asl20 ];
  };
}
