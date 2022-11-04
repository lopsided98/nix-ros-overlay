
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-testing, launch-testing-ament-cmake, libyamlcpp, rclcpp, rcutils, rmw-connextdds, rmw-cyclonedds-cpp, rmw-fastrtps-cpp, rmw-implementation-cmake, rosbag2-cpp, rosidl-default-generators, rosidl-default-runtime, rosidl-typesupport-cpp, test-msgs, zstd-vendor }:
buildRosPackage {
  pname = "ros-galactic-domain-bridge";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/domain_bridge-release/archive/release/galactic/domain_bridge/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "07b6329f739006e11a9fdfd9a42c93c6488b72d6f9bf5b9ee4ef11e9779c3fa3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common example-interfaces launch launch-testing launch-testing-ament-cmake rmw-connextdds rmw-cyclonedds-cpp rmw-fastrtps-cpp rmw-implementation-cmake test-msgs ];
  propagatedBuildInputs = [ libyamlcpp rclcpp rcutils rosbag2-cpp rosidl-default-runtime rosidl-typesupport-cpp zstd-vendor ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''ROS 2 Domain Bridge'';
    license = with lib.licenses; [ asl20 ];
  };
}
