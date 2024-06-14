
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, builtin-interfaces, geometry-msgs, nav-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, sensor-msgs, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-imu-filter-madgwick";
  version = "2.1.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/jazzy/imu_filter_madgwick/2.1.3-4.tar.gz";
    name = "2.1.3-4.tar.gz";
    sha256 = "1b703aadec42d0b0ee4a5d915757fb9e775a31ea71a4db5bd7910d755c3bffa1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs nav-msgs rclcpp rclcpp-action rclcpp-lifecycle sensor-msgs tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Filter which fuses angular velocities, accelerations, and (optionally) magnetic readings from a generic IMU device into an orientation. Based on code by Sebastian Madgwick, http://www.x-io.co.uk/node/8#open_source_ahrs_and_imu_algorithms.";
    license = with lib.licenses; [ "GPL" ];
  };
}
