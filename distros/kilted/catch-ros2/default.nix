
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, ros2launch, std-srvs }:
buildRosPackage {
  pname = "ros-kilted-catch-ros2";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/catch_ros2-release/archive/release/kilted/catch_ros2/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "9d2557137d837c4d722e61b9a7b3840a62cdf5d78ffbef6784a84558427c1bc6";
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
