
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lttng-tools, lttng-ust, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-tracetools";
  version = "6.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/rolling/tracetools/6.4.0-1.tar.gz";
    name = "6.4.0-1.tar.gz";
    sha256 = "aee7479bc93c51b8942c7f78a6e1e3553372f55263367142466e8703292d10db";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros pkg-config ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ lttng-tools lttng-ust ];
  nativeBuildInputs = [ ament-cmake-ros pkg-config ];

  meta = {
    description = ''Tracing wrapper for ROS 2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
