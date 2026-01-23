
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lttng-tools, lttng-ust, pkg-config }:
buildRosPackage {
  pname = "ros-jazzy-tracetools";
  version = "8.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/jazzy/tracetools/8.2.5-1.tar.gz";
    name = "8.2.5-1.tar.gz";
    sha256 = "431a151fd13a2b0a4929cd7567624e124ee5ab943d8cdd82888be7b79d78d060";
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
