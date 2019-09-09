
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rclcpp, ament-lint-auto, rcutils }:
buildRosPackage {
  pname = "ros-dashing-rosbag2-test-common";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/rosbag2_test_common/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "e07c8ec1349709472912d1f93d63c666583a3ce904c46edb0859918bda09b155";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils rclcpp ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcutils rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Commonly used test helper classes and fixtures for rosbag2'';
    license = with lib.licenses; [ asl20 ];
  };
}
