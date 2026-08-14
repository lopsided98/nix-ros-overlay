
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosapi, rosbridge-library, rosbridge-server }:
buildRosPackage {
  pname = "ros-lyrical-rosbridge-suite";
  version = "4.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/lyrical/rosbridge_suite/4.2.1-1.tar.gz";
    name = "4.2.1-1.tar.gz";
    sha256 = "78af23fe94a67628cd7d03a6ce2f307b4f559b16e1d6467827c1f629fb58c801";
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
