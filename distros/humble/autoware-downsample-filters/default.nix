
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-point-types, autoware-utils-debug, autoware-utils-system, autoware-utils-tf, geometry-msgs, pcl-conversions, rclcpp, sensor-msgs, tf2-ros, tl-expected }:
buildRosPackage {
  pname = "ros-humble-autoware-downsample-filters";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_downsample_filters/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "f71ca7ef39ee4621d5c857846e9a1f0942d543fa90ce1be0a3250ca6c925425d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common geometry-msgs tf2-ros ];
  propagatedBuildInputs = [ autoware-point-types autoware-utils-debug autoware-utils-system autoware-utils-tf pcl-conversions rclcpp sensor-msgs tl-expected ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The ROS 2 autoware_downsample_filters package";
    license = with lib.licenses; [ asl20 ];
  };
}
