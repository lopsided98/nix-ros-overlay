
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-testing, launch-testing-ament-cmake, libyamlcpp, rclcpp, rcutils, rosbag2-cpp, test-msgs }:
buildRosPackage {
  pname = "ros-galactic-domain-bridge";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/domain_bridge-release/archive/release/galactic/domain_bridge/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "c640ea27a3b78595aab2fc36b302130dcaeb7df826e5616350dbe86820940624";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common example-interfaces launch launch-testing launch-testing-ament-cmake test-msgs ];
  propagatedBuildInputs = [ libyamlcpp rclcpp rcutils rosbag2-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 Domain Bridge'';
    license = with lib.licenses; [ asl20 ];
  };
}
