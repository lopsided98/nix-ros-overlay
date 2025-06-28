
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, nav2-common, nav2-util, rclcpp, rclcpp-components, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-kilted-nav2-velocity-smoother";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_velocity_smoother/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "53bf317d0c354ee1e94ea1ed29e7c7999a6f346fef6582a82974069f20807c01";
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
