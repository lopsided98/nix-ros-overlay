
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, protobuf }:
buildRosPackage {
  pname = "ros-humble-sync-tooling-msgs";
  version = "0.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sync_tooling_msgs-release/archive/release/humble/sync_tooling_msgs/0.2.7-1.tar.gz";
    name = "0.2.7-1.tar.gz";
    sha256 = "11e7354cd8c8b64fb21b5db13bc3c70c11e8891b61fb5f4c2330ba182428ef42";
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
