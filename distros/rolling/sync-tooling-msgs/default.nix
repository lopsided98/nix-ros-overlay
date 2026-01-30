
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, protobuf }:
buildRosPackage {
  pname = "ros-rolling-sync-tooling-msgs";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sync_tooling_msgs-release/archive/release/rolling/sync_tooling_msgs/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "ede0ba7ea65072864a82edf69bc5a1e7bd3d543e5f2195e1d1cc4674678fed6a";
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
