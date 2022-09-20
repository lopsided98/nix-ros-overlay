
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rcutils }:
buildRosPackage {
  pname = "ros-galactic-rosbag2-test-common";
  version = "0.9.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/galactic/rosbag2_test_common/0.9.1-3.tar.gz";
    name = "0.9.1-3.tar.gz";
    sha256 = "51e874be18cacd0b6fd8634382a2dfdd9ac207b24ef04b661e33230b5ae0b616";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rcutils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Commonly used test helper classes and fixtures for rosbag2'';
    license = with lib.licenses; [ asl20 ];
  };
}
