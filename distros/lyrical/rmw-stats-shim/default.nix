
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosgraph-monitor-msgs, rosidl-runtime-cpp, rosidl-typesupport-cpp }:
buildRosPackage {
  pname = "ros-lyrical-rmw-stats-shim";
  version = "0.2.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/graph_monitor-release/archive/release/lyrical/rmw_stats_shim/0.2.3-3.tar.gz";
    name = "0.2.3-3.tar.gz";
    sha256 = "cbc93c655412818825ed6ce648e11f1b0748dfc3690ce37f6197f564e77d74d5";
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
