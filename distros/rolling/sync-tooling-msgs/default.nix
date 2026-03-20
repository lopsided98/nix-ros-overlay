
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, protobuf }:
buildRosPackage {
  pname = "ros-rolling-sync-tooling-msgs";
  version = "0.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sync_tooling_msgs-release/archive/release/rolling/sync_tooling_msgs/0.2.7-1.tar.gz";
    name = "0.2.7-1.tar.gz";
    sha256 = "b1d21ca0d60a3c0a3143d39b729b0a6941e679bb2100117e66e292948988dc2d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ protobuf ];
  nativeBuildInputs = [ ament-cmake protobuf ];

  meta = {
    description = "Protobuf definitions for SYNC.TOOLING";
    license = with lib.licenses; [ asl20 ];
  };
}
