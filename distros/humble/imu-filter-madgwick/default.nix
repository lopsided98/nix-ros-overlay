
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, builtin-interfaces, geometry-msgs, nav-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, sensor-msgs, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-imu-filter-madgwick";
  version = "2.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/humble/imu_filter_madgwick/2.1.1-2.tar.gz";
    name = "2.1.1-2.tar.gz";
    sha256 = "4f61fe56b2166f3e4cd757d841fa751c747f9009a26417108257197b6f95bb1d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs nav-msgs rclcpp rclcpp-action rclcpp-lifecycle sensor-msgs tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Filter which fuses angular velocities, accelerations, and (optionally) magnetic readings from a generic IMU device into an orientation. Based on code by Sebastian Madgwick, http://www.x-io.co.uk/node/8#open_source_ahrs_and_imu_algorithms.'';
    license = with lib.licenses; [ "GPL" ];
  };
}
