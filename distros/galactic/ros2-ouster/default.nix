
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, launch, launch-ros, ouster-msgs, pcl, pcl-conversions, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-srvs, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-galactic-ros2-ouster";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_ouster_drivers-release/archive/release/galactic/ros2_ouster/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "5240df6b2848398a7a3733ef32255baefe98665cf16b57d528ca927175fb5274";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs launch launch-ros ouster-msgs pcl pcl-conversions rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs std-srvs tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 Drivers for the Ouster OS-1 Lidar'';
    license = with lib.licenses; [ asl20 ];
  };
}
