
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-point-types, autoware-utils-debug, autoware-utils-system, autoware-utils-tf, geometry-msgs, pcl-conversions, rclcpp, rclcpp-components, sensor-msgs, tf2-eigen }:
buildRosPackage {
  pname = "ros-humble-autoware-crop-box-filter";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_crop_box_filter/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "4d033965d672b1ee28c1f58f37b62c519b37189b6942cac4a83701408fe4f26a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-point-types autoware-utils-debug autoware-utils-system autoware-utils-tf geometry-msgs pcl-conversions rclcpp rclcpp-components sensor-msgs tf2-eigen ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The ROS 2 autoware_crop_box_filter package";
    license = with lib.licenses; [ asl20 ];
  };
}
