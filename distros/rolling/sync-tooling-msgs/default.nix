
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, protobuf }:
buildRosPackage {
  pname = "ros-rolling-sync-tooling-msgs";
  version = "0.2.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sync_tooling_msgs-release/archive/release/rolling/sync_tooling_msgs/0.2.7-2.tar.gz";
    name = "0.2.7-2.tar.gz";
    sha256 = "b9655607487d5be89bb3bb879036d74f4fc3a0c8214892c0ccb8f5ba95e8d908";
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
