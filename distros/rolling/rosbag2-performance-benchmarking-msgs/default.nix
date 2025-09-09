
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rosidl-cmake, rosidl-default-generators, rosidl-default-runtime, rosidl-typesupport-cpp }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-performance-benchmarking-msgs";
  version = "0.33.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_performance_benchmarking_msgs/0.33.0-1.tar.gz";
    name = "0.33.0-1.tar.gz";
    sha256 = "8ce0ab6e70b10cdfff7538495f1ae2e2c2b24285cb6d938a4121ce6058808da5";
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
