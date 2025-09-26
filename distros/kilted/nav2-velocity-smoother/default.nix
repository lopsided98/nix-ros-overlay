
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, nav2-common, nav2-util, rclcpp, rclcpp-components, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-kilted-nav2-velocity-smoother";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_velocity_smoother/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "80e4e01c27a17f17cca8426b5998caffb7bb75756c2a323db815eb32afc724fc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common nav-msgs ];
  propagatedBuildInputs = [ geometry-msgs nav2-util rclcpp rclcpp-components rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2's Output velocity smoother";
    license = with lib.licenses; [ asl20 ];
  };
}
