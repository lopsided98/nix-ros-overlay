
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-index-cpp, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-point-types, autoware-test-utils, autoware-utils-debug, autoware-utils-geometry, autoware-utils-math, autoware-utils-system, autoware-utils-tf, autoware-vehicle-info-utils, message-filters, pcl-conversions, pcl-ros, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-autoware-ground-filter";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_ground_filter/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "c9863094e2e994c318069e64ad5aa6b8f44efec2f9e4c236ae3e3d0ae2b66e6d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common autoware-test-utils ];
  propagatedBuildInputs = [ ament-index-cpp autoware-point-types autoware-utils-debug autoware-utils-geometry autoware-utils-math autoware-utils-system autoware-utils-tf autoware-vehicle-info-utils message-filters pcl-conversions pcl-ros rclcpp rclcpp-components sensor-msgs std-msgs tf2 tf2-eigen tf2-ros tf2-sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The ROS 2 autoware_ground_filter package";
    license = with lib.licenses; [ asl20 ];
  };
}
