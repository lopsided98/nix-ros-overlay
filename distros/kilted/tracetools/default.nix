
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, lttng-tools, lttng-ust, pkg-config }:
buildRosPackage {
  pname = "ros-kilted-tracetools";
  version = "8.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/kilted/tracetools/8.6.0-2.tar.gz";
    name = "8.6.0-2.tar.gz";
    sha256 = "e9c992227c7858cf760e6c85a7dc3c1df45ed8941a6bfbf9bce9bb8912377a29";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-ros-core pkg-config ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ lttng-tools lttng-ust ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-ros-core pkg-config ];

  meta = {
    description = "Tracing wrapper for ROS 2.";
    license = with lib.licenses; [ asl20 ];
  };
}
