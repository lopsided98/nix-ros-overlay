
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosgraph-monitor-msgs, rosidl-runtime-cpp, rosidl-typesupport-cpp }:
buildRosPackage {
  pname = "ros-rolling-rmw-stats-shim";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/graph_monitor-release/archive/release/rolling/rmw_stats_shim/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "2e6e1f3e5572233153ef28c72e31a29f3b1bdd7d4519ff190e738d0329927c1f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosgraph-monitor-msgs rosidl-runtime-cpp rosidl-typesupport-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Partial RMW shim library to instrument RMW API calls";
    license = with lib.licenses; [ asl20 ];
  };
}
