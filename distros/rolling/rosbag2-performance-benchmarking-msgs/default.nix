
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rosidl-cmake, rosidl-default-generators, rosidl-default-runtime, rosidl-typesupport-cpp }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-performance-benchmarking-msgs";
  version = "0.24.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_performance_benchmarking_msgs/0.24.0-2.tar.gz";
    name = "0.24.0-2.tar.gz";
    sha256 = "b211c37e2884e9c0c020d62d671215aa5d80685d73ad083e160ec48ebe6638c2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosidl-cmake rosidl-typesupport-cpp ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing rosbag2 performance benchmarking specific messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
