
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, ros2launch, std-srvs }:
buildRosPackage {
  pname = "ros-humble-catch-ros2";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/catch_ros2-release/archive/release/humble/catch_ros2/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "c385ec7cc36c304cea5d46f8a3f431a7459368d36b1dfba4c0201c47d329970b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp ros2launch std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Catch2 testing framework for ROS 2 unit and integration tests.'';
    license = with lib.licenses; [ asl20 ];
  };
}
