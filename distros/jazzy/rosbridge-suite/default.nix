
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosapi, rosbridge-library, rosbridge-server }:
buildRosPackage {
  pname = "ros-jazzy-rosbridge-suite";
  version = "2.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/jazzy/rosbridge_suite/2.4.2-1.tar.gz";
    name = "2.4.2-1.tar.gz";
    sha256 = "d7291379063b97c9a275d49a239dbcc461e40bc6dabd8d8a7c9323f5829083a3";
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
