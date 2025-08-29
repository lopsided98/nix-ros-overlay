
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, bond, bondcpp, builtin-interfaces, geometry-msgs, lifecycle-msgs, nav-msgs, nav2-common, nav2-msgs, pluginlib, rcl-interfaces, rclcpp, rclcpp-action, rclcpp-lifecycle, std-msgs, std-srvs, test-msgs, tf2, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-nav2-util";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_util/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "967a071884ade94180f5656a3d5882170ba589f5adfad16fbed210c684c12246";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common std-srvs test-msgs ];
  propagatedBuildInputs = [ bond bondcpp builtin-interfaces geometry-msgs lifecycle-msgs nav-msgs nav2-common nav2-msgs pluginlib rcl-interfaces rclcpp rclcpp-action rclcpp-lifecycle std-msgs tf2 tf2-geometry-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2 utilities";
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
