
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, ros2launch, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-catch-ros2";
  version = "0.2.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/catch_ros2-release/archive/release/rolling/catch_ros2/0.2.3-2.tar.gz";
    name = "0.2.3-2.tar.gz";
    sha256 = "4f84c02f8eb615fadc94e74494dd1269d02479ad5e126ea400904e4c99b27b9d";
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
