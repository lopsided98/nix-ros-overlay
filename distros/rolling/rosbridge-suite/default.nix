
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosapi, rosbridge-library, rosbridge-server }:
buildRosPackage {
  pname = "ros-rolling-rosbridge-suite";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/rolling/rosbridge_suite/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "e7e9d48a825b76aab673dc41458183a37725175c550e0214df4e6a259fdd4d1e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rosapi rosbridge-library rosbridge-server ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Rosbridge provides a JSON API to ROS functionality for non-ROS programs.
There are a variety of front ends that interface with rosbridge, including
a WebSocket server for web browsers to interact with.

Rosbridge_suite is a meta-package containing rosbridge, various front end
packages for rosbridge like a WebSocket package, and helper packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
