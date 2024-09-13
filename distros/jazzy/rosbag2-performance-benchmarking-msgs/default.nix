
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rosidl-cmake, rosidl-default-generators, rosidl-default-runtime, rosidl-typesupport-cpp }:
buildRosPackage {
  pname = "ros-jazzy-rosbag2-performance-benchmarking-msgs";
  version = "0.26.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/rosbag2_performance_benchmarking_msgs/0.26.5-1.tar.gz";
    name = "0.26.5-1.tar.gz";
    sha256 = "638cda6aafc0ca3986bd0b8b25ed76b3606e35f0ded1d35553653cc0ba0729e0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosidl-cmake rosidl-typesupport-cpp ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing rosbag2 performance benchmarking specific messages.";
    license = with lib.licenses; [ asl20 ];
  };
}
