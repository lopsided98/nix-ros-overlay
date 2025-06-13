
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, builtin-interfaces, geometry-msgs, nav-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, sensor-msgs, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-imu-filter-madgwick";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/kilted/imu_filter_madgwick/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "49d0e134a0ab7a844c649a1ad1e5ca63fec951a99ce068a72748581d22271228";
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
