
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, ros2launch, std-srvs }:
buildRosPackage {
  pname = "ros-lyrical-catch-ros2";
  version = "0.2.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/catch_ros2-release/archive/release/lyrical/catch_ros2/0.2.3-3.tar.gz";
    name = "0.2.3-3.tar.gz";
    sha256 = "16bc041ffbc823585000c3504b88d8a55a764a52880a7ba11cc13692fdd8e46c";
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
