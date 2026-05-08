
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-point-types, autoware-utils-debug, autoware-utils-system, autoware-utils-tf, geometry-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2-eigen }:
buildRosPackage {
  pname = "ros-humble-autoware-crop-box-filter";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_crop_box_filter/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "af268e68a6722c83be03878502b986c0f9d2a65aaad4a5ea3dc54bf52cfde8c0";
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
