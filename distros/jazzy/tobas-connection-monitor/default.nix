
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-msgs, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-connection-monitor";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_connection_monitor/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "f6309e9ad5c1ae93afa64c7b428a3cfc677edc5d591299aa3423c271eb316fb0";
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
