
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosapi, rosbridge-library, rosbridge-server }:
buildRosPackage {
  pname = "ros-lyrical-rosbridge-suite";
  version = "4.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/lyrical/rosbridge_suite/4.1.0-3.tar.gz";
    name = "4.1.0-3.tar.gz";
    sha256 = "419192ff2fb4928b1f5650e0d38a247f3bb745fedff2628ec8670ba9ca1a1d05";
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
