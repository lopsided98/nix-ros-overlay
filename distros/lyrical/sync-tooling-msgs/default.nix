
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, protobuf }:
buildRosPackage {
  pname = "ros-lyrical-sync-tooling-msgs";
  version = "0.2.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sync_tooling_msgs-release/archive/release/lyrical/sync_tooling_msgs/0.2.7-3.tar.gz";
    name = "0.2.7-3.tar.gz";
    sha256 = "89f5dd676cc4aea4e875ea2de02fff46e2362ce71261c35dfb687709e5f6fd30";
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
