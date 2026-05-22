
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, protobuf }:
buildRosPackage {
  pname = "ros-humble-sync-tooling-msgs";
  version = "0.2.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sync_tooling_msgs-release/archive/release/humble/sync_tooling_msgs/0.2.9-1.tar.gz";
    name = "0.2.9-1.tar.gz";
    sha256 = "dbd265944c01f628d30ab9d0fc4678b47aea8372ae7b5f18bc63136a20376977";
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
