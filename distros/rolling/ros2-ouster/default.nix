
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, launch, launch-ros, libtins, ouster-msgs, pcl, pcl-conversions, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-srvs, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros2-ouster";
  version = "0.5.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_ouster_drivers-release/archive/release/rolling/ros2_ouster/0.5.1-4.tar.gz";
    name = "0.5.1-4.tar.gz";
    sha256 = "2e5fb960c2484b941939109516e9b93b8a56b07451748e204f6402a0f4460959";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs launch launch-ros libtins ouster-msgs pcl pcl-conversions rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs std-srvs tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 Drivers for the Ouster OS-1 Lidar";
    license = with lib.licenses; [ asl20 ];
  };
}
