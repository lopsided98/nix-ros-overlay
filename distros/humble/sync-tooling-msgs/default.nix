
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, protobuf }:
buildRosPackage {
  pname = "ros-humble-sync-tooling-msgs";
  version = "0.2.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sync_tooling_msgs-release/archive/release/humble/sync_tooling_msgs/0.2.11-1.tar.gz";
    name = "0.2.11-1.tar.gz";
    sha256 = "01f5e95bc462603384ca01f3b2ce94755bb8c9d1a60f9afe4a98c96999cb903f";
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
