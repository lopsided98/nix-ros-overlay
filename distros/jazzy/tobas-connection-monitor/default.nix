
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-msgs, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-connection-monitor";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_connection_monitor/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "548d0f058b061f39afe5e51dcca696957a37f45828def485a409beff4f8fb45e";
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
