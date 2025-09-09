
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosgraph-monitor-msgs, rosidl-runtime-cpp, rosidl-typesupport-cpp }:
buildRosPackage {
  pname = "ros-kilted-rmw-stats-shim";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/graph_monitor-release/archive/release/kilted/rmw_stats_shim/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "672eb98d6ad03934095c6cb11c043394f146a409a860025802fdbadce66af3e5";
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
