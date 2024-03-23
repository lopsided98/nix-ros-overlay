
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, ros2launch, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-catch-ros2";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/catch_ros2-release/archive/release/rolling/catch_ros2/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "1e82342aaa91a27dd071cc7a5ba79d588a09e83a82d8a7fd42bc5fe32a3ea2f7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp ros2launch std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Catch2 testing framework for ROS 2 unit and integration tests.";
    license = with lib.licenses; [ asl20 ];
  };
}
