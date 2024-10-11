
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosapi, rosbridge-library, rosbridge-server }:
buildRosPackage {
  pname = "ros-humble-rosbridge-suite";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/humble/rosbridge_suite/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "80b77f39efc426c80c4bd68969b5bad1f89eac0a8defb3cca98b7abcf8f13fbd";
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
