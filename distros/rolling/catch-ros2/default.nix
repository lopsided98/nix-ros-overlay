
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, ros2launch, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-catch-ros2";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/catch_ros2-release/archive/release/rolling/catch_ros2/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "fa1709a9486c489ade25f08d6d7350ff5693619699421d5e615f79703df9c80b";
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
