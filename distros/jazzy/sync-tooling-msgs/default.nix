
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, protobuf }:
buildRosPackage {
  pname = "ros-jazzy-sync-tooling-msgs";
  version = "0.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sync_tooling_msgs-release/archive/release/jazzy/sync_tooling_msgs/0.2.7-1.tar.gz";
    name = "0.2.7-1.tar.gz";
    sha256 = "ffafefe6766b0fe77815bf36c86ee27e03b6ddb417e8855b58b8bf8d3b8ef118";
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
