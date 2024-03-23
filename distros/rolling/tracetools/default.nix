
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lttng-tools, lttng-ust, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-tracetools";
  version = "8.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/rolling/tracetools/8.0.0-2.tar.gz";
    name = "8.0.0-2.tar.gz";
    sha256 = "5cfd2ea120c43c61d5d61836b2622b3673afd90630c4b32637f41749124b7e56";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros pkg-config ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ lttng-tools lttng-ust ];
  nativeBuildInputs = [ ament-cmake-ros pkg-config ];

  meta = {
    description = "Tracing wrapper for ROS 2.";
    license = with lib.licenses; [ asl20 ];
  };
}
