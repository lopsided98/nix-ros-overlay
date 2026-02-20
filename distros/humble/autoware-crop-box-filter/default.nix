
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-point-types, autoware-utils-debug, autoware-utils-system, autoware-utils-tf, geometry-msgs, pcl-conversions, rclcpp, rclcpp-components, sensor-msgs, tf2-eigen }:
buildRosPackage {
  pname = "ros-humble-autoware-crop-box-filter";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_crop_box_filter/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "ae312a267cb743ce00f20afb0aa8190321a1926c3686bf7a281f3a9cab13ef34";
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
