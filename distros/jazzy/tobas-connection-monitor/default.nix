
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-msgs, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-connection-monitor";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_connection_monitor/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "0a19820da9e92ff0c0d0e53cc8f96604664c8d16abb17ff244cb84a42b8d7d53";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-constants tobas-msgs tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Heartbeat sender and receiver nodes for monitoring ROS 2 connection health.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
