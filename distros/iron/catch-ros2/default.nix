
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, ros2launch, std-srvs }:
buildRosPackage {
  pname = "ros-iron-catch-ros2";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/catch_ros2-release/archive/release/iron/catch_ros2/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "64d4f6f2970b47a7be4872cf5b7ebd3d5c25572545fb80c10d7d6f9a0c54467e";
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
