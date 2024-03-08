
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, launch, launch-ros, libtins, ouster-msgs, pcl, pcl-conversions, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-srvs, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros2-ouster";
  version = "0.5.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_ouster_drivers-release/archive/release/rolling/ros2_ouster/0.5.1-2.tar.gz";
    name = "0.5.1-2.tar.gz";
    sha256 = "32414219df9250b4bb4679dc76a81c0492c64c1482f723f08d708d9242a2681c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs launch launch-ros libtins ouster-msgs pcl pcl-conversions rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs std-srvs tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 Drivers for the Ouster OS-1 Lidar'';
    license = with lib.licenses; [ asl20 ];
  };
}
