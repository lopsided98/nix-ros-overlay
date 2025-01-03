
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lttng-tools, lttng-ust, pkg-config }:
buildRosPackage {
  pname = "ros-jazzy-tracetools";
  version = "8.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/jazzy/tracetools/8.2.3-1.tar.gz";
    name = "8.2.3-1.tar.gz";
    sha256 = "a21d2350baad8b7bd8dc4c5b92dda507dcce2c98a4b0f7d4277357478b2ca102";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-gen-version-h ament-cmake-ros pkg-config ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ lttng-tools lttng-ust ];
  nativeBuildInputs = [ ament-cmake-gen-version-h ament-cmake-ros pkg-config ];

  meta = {
    description = "Tracing wrapper for ROS 2.";
    license = with lib.licenses; [ asl20 ];
  };
}
