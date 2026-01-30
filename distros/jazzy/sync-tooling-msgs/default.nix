
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, protobuf }:
buildRosPackage {
  pname = "ros-jazzy-sync-tooling-msgs";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sync_tooling_msgs-release/archive/release/jazzy/sync_tooling_msgs/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "1a6f77328b0aef4dc981812123285b66c1e1fbef23f4c3d6a0c63cfa3b302589";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ protobuf ];
  nativeBuildInputs = [ ament-cmake protobuf ];

  meta = {
    description = "Protobuf definitions for synchronization diagnostics";
    license = with lib.licenses; [ asl20 ];
  };
}
