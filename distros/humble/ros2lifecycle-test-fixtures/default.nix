
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-humble-ros2lifecycle-test-fixtures";
  version = "0.18.17-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/humble/ros2lifecycle_test_fixtures/0.18.17-1.tar.gz";
    name = "0.18.17-1.tar.gz";
    sha256 = "f3c56370dd0a80b75a95c1ec51e914be42c74dc942f7db521247fdc4d745dcfd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing fixture nodes for ros2lifecycle tests";
    license = with lib.licenses; [ asl20 ];
  };
}
