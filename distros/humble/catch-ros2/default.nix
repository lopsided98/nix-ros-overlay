
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, ros2launch, std-srvs }:
buildRosPackage {
  pname = "ros-humble-catch-ros2";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/catch_ros2-release/archive/release/humble/catch_ros2/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "a6f060f5e28404b8bd87beff0db32f32dbadfeaabde59be79f1f59b4911beb14";
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
