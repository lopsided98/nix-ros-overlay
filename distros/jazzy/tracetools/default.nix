
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lttng-tools, lttng-ust, pkg-config }:
buildRosPackage {
  pname = "ros-jazzy-tracetools";
  version = "8.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/jazzy/tracetools/8.2.1-1.tar.gz";
    name = "8.2.1-1.tar.gz";
    sha256 = "8a07c470d1b20e9ee356d47720f6d1fe908f30f2f7e81224ff825ea6807e79fa";
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
