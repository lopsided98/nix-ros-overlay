
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-drone-msgs-adapter, tobas-msgs, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-drone-server";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_drone_server/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "32ba9e8f908f378564c9595eeed468a66db21ffa53e9a73072a1b6ab7e4377cf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-drone-msgs-adapter tobas-msgs tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 node that serves the configured Tobas vehicle model.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
