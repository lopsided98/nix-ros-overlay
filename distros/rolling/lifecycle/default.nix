
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, lifecycle-msgs, rclcpp, rclcpp-lifecycle, ros-testing, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-lifecycle";
  version = "0.37.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/lifecycle/0.37.1-1.tar.gz";
    name = "0.37.1-1.tar.gz";
    sha256 = "0c6c26d5f090c67ae8e21f28d5e335d33b437a9eb74c50d94832a1d12eb9ce8c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ros-testing ];
  propagatedBuildInputs = [ lifecycle-msgs rclcpp rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing demos for lifecycle implementation";
    license = with lib.licenses; [ asl20 ];
  };
}
