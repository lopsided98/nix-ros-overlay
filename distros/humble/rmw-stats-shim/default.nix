
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosgraph-monitor-msgs, rosidl-runtime-cpp, rosidl-typesupport-cpp }:
buildRosPackage {
  pname = "ros-humble-rmw-stats-shim";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/graph_monitor-release/archive/release/humble/rmw_stats_shim/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "f99b7039d2c7d0e370773ebc21c924720b2d0ee1b8e639179fa8602946083ea7";
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
