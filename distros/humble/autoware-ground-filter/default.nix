
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-cpp, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-point-types, autoware-utils-debug, autoware-utils-geometry, autoware-utils-math, autoware-utils-system, autoware-utils-tf, autoware-vehicle-info-utils, message-filters, pcl-conversions, pcl-ros, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-ground-filter";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_ground_filter/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "13742f4febe6674e1c2589f0b041a873188fe4a311f90ea63e9860c73f224244";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp autoware-point-types autoware-utils-debug autoware-utils-geometry autoware-utils-math autoware-utils-system autoware-utils-tf autoware-vehicle-info-utils message-filters pcl-conversions pcl-ros rclcpp rclcpp-components sensor-msgs std-msgs tf2 tf2-eigen tf2-ros tf2-sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The ROS 2 autoware_ground_filter package";
    license = with lib.licenses; [ asl20 ];
  };
}
