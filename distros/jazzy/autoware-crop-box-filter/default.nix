
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-point-types, autoware-utils-debug, autoware-utils-system, autoware-utils-tf, geometry-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2-eigen }:
buildRosPackage {
  pname = "ros-jazzy-autoware-crop-box-filter";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_crop_box_filter/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "d5dd638c65e4eaeebc14c493cb06a2ef15196dd8884d404b52edc4ae78927200";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-point-types autoware-utils-debug autoware-utils-system autoware-utils-tf geometry-msgs rclcpp rclcpp-components sensor-msgs tf2-eigen ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The ROS 2 autoware_crop_box_filter package";
    license = with lib.licenses; [ asl20 ];
  };
}
