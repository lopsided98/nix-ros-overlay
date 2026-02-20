
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-internal-debug-msgs, autoware-internal-planning-msgs, autoware-interpolation, autoware-lanelet2-extension, autoware-lanelet2-utils, autoware-lint-common, autoware-map-msgs, autoware-motion-utils, autoware-objects-of-interest-marker-interface, autoware-perception-msgs, autoware-planning-factor-interface, autoware-planning-msgs, autoware-route-handler, autoware-test-utils, autoware-trajectory, autoware-utils-debug, autoware-utils-geometry, autoware-utils-rclcpp, autoware-utils-system, autoware-utils-visualization, autoware-vehicle-info-utils, autoware-velocity-smoother, diagnostic-msgs, eigen, eigen3-cmake-module, geometry-msgs, nav-msgs, pcl-conversions, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-behavior-velocity-planner-common";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_behavior_velocity_planner_common/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "de6a0c55dba585a328052708837f3fc085e0a78158c017e9b73c49553470c06f";
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
