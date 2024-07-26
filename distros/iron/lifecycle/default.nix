
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, lifecycle-msgs, rclcpp-lifecycle, ros-testing, std-msgs }:
buildRosPackage {
  pname = "ros-iron-lifecycle";
  version = "0.27.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/iron/lifecycle/0.27.2-1.tar.gz";
    name = "0.27.2-1.tar.gz";
    sha256 = "2efe634bef43a7c8923c2513f679a19c8abbf932cf0b78115b3687b1e65b8b5f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ros-testing ];
  propagatedBuildInputs = [ lifecycle-msgs rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing demos for lifecycle implementation";
    license = with lib.licenses; [ asl20 ];
  };
}
