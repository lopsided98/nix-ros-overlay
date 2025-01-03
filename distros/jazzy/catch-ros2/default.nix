
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, ros2launch, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-catch-ros2";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/catch_ros2-release/archive/release/jazzy/catch_ros2/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "54de7c2fa2ffe055bd437f7fc0b822bd99aa5ecb5cbb0da5145c02cf8ea2987c";
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
