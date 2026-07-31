
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-internal-debug-msgs, autoware-internal-planning-msgs, autoware-interpolation, autoware-lanelet2-extension, autoware-lanelet2-utils, autoware-lint-common, autoware-map-msgs, autoware-motion-utils, autoware-objects-of-interest-marker-interface, autoware-perception-msgs, autoware-planning-factor-interface, autoware-planning-msgs, autoware-route-handler, autoware-test-utils, autoware-trajectory, autoware-utils-debug, autoware-utils-geometry, autoware-utils-rclcpp, autoware-utils-system, autoware-utils-visualization, autoware-vehicle-info-utils, autoware-velocity-smoother, diagnostic-msgs, eigen, eigen3-cmake-module, geometry-msgs, nav-msgs, pcl-conversions, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-autoware-behavior-velocity-planner-common";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_behavior_velocity_planner_common/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "98c82654cfbb7142abed97eb9a008aac75f68c7eb19d97b3314b97f9c3150f72";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common autoware-test-utils ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs autoware-internal-debug-msgs autoware-internal-planning-msgs autoware-interpolation autoware-lanelet2-extension autoware-lanelet2-utils autoware-map-msgs autoware-motion-utils autoware-objects-of-interest-marker-interface autoware-perception-msgs autoware-planning-factor-interface autoware-planning-msgs autoware-route-handler autoware-trajectory autoware-utils-debug autoware-utils-geometry autoware-utils-rclcpp autoware-utils-system autoware-utils-visualization autoware-vehicle-info-utils autoware-velocity-smoother diagnostic-msgs eigen geometry-msgs nav-msgs pcl-conversions rclcpp rclcpp-components sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "The autoware_behavior_velocity_planner_common package";
    license = with lib.licenses; [ asl20 ];
  };
}
