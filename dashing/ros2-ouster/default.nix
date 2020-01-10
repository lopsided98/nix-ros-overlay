
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, launch, launch-ros, ouster-msgs, pcl, pcl-conversions, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-srvs, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-dashing-ros2-ouster";
  version = "0.0.0-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/ros2_ouster_drivers-release/archive/release/dashing/ros2_ouster/0.0.0-1.tar.gz";
    name = "0.0.0-1.tar.gz";
    sha256 = "80c6f43f6d573562f30a74d4182989c18b92185f2615b001cb81c3b957c33392";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs launch launch-ros ouster-msgs pcl pcl-conversions rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs std-srvs tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 Drivers for the Ouster OS-1 Lidar'';
    license = with lib.licenses; [ asl20 ];
  };
}
