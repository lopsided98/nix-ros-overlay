
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, backward-ros, bond, bondcpp, builtin-interfaces, geometry-msgs, lifecycle-msgs, map-msgs, nav-msgs, nav2-common, nav2-msgs, pluginlib, rcl-interfaces, rclcpp, rclcpp-action, rclcpp-lifecycle, sensor-msgs, std-msgs, std-srvs, test-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-nav2-ros-common";
  version = "1.5.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_ros_common/1.5.2-2.tar.gz";
    name = "1.5.2-2.tar.gz";
    sha256 = "6417b9a3f606d26e593a35bda956cb807495f8016f1e1321b17456cd65fde943";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-cmake-ros ament-lint-auto ament-lint-common std-srvs test-msgs ];
  propagatedBuildInputs = [ ament-index-cpp backward-ros bond bondcpp builtin-interfaces geometry-msgs lifecycle-msgs map-msgs nav-msgs nav2-msgs pluginlib rcl-interfaces rclcpp rclcpp-action rclcpp-lifecycle sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2 utilities";
    license = with lib.licenses; [ asl20 ];
  };
}
