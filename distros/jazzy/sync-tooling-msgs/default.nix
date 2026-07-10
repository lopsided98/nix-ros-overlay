
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, protobuf }:
buildRosPackage {
  pname = "ros-jazzy-sync-tooling-msgs";
  version = "0.2.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sync_tooling_msgs-release/archive/release/jazzy/sync_tooling_msgs/0.2.11-1.tar.gz";
    name = "0.2.11-1.tar.gz";
    sha256 = "f58a1e3593cf4f6ca4bb80873667f527275aae25d3ef4f59a4285ae34f19d6e7";
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
