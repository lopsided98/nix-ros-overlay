
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosapi, rosbridge-library, rosbridge-server }:
buildRosPackage {
  pname = "ros-kilted-rosbridge-suite";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/kilted/rosbridge_suite/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "650186b92ff79e60122566f8d9f508d04da89611ab73373e157180a8805b8125";
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
