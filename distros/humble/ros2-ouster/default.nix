
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, launch, launch-ros, libtins, ouster-msgs, pcl, pcl-conversions, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-srvs, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-ros2-ouster";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_ouster_drivers-release/archive/release/humble/ros2_ouster/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "e3fbe0422fc69482bf934982349b66265998d6aa52a982e076ffc02572721f85";
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
