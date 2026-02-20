
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-behavior-velocity-planner, autoware-behavior-velocity-planner-common, autoware-cmake, autoware-internal-planning-msgs, autoware-lanelet2-extension, autoware-lint-common, autoware-motion-utils, autoware-route-handler, autoware-trajectory, autoware-utils-debug, autoware-utils-geometry, autoware-utils-rclcpp, eigen, eigen3-cmake-module, geometry-msgs, pluginlib, rclcpp, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-behavior-velocity-stop-line-module";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_behavior_velocity_stop_line_module/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "2702fc3b2503fbeaccac5d0f6701e5c89b408b9b467d092dfed2e743b623d260";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-behavior-velocity-planner autoware-behavior-velocity-planner-common autoware-internal-planning-msgs autoware-lanelet2-extension autoware-motion-utils autoware-route-handler autoware-trajectory autoware-utils-debug autoware-utils-geometry autoware-utils-rclcpp eigen geometry-msgs pluginlib rclcpp tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "The autoware_behavior_velocity_stop_line_module package";
    license = with lib.licenses; [ asl20 ];
  };
}
