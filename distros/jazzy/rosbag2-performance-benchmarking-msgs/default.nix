
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rosidl-cmake, rosidl-default-generators, rosidl-default-runtime, rosidl-typesupport-cpp }:
buildRosPackage {
  pname = "ros-jazzy-rosbag2-performance-benchmarking-msgs";
  version = "0.26.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/rosbag2_performance_benchmarking_msgs/0.26.3-1.tar.gz";
    name = "0.26.3-1.tar.gz";
    sha256 = "ef2bbb7accf0c991101562f2326e147e7ba495bf678e24c18468afe0ab3bde02";
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
