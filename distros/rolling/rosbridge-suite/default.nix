
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, rosapi, rosbridge-library, rosbridge-server }:
buildRosPackage {
  pname = "ros-rolling-rosbridge-suite";
  version = "1.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/rolling/rosbridge_suite/1.3.1-2.tar.gz";
    name = "1.3.1-2.tar.gz";
    sha256 = "21761d6d8a5ac5cc5ed4ae25dac0f14b56a401bc8812fd287113307a35cc8277";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  propagatedBuildInputs = [ rosapi rosbridge-library rosbridge-server ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''Rosbridge provides a JSON API to ROS functionality for non-ROS programs.
    There are a variety of front ends that interface with rosbridge, including
    a WebSocket server for web browsers to interact with.

    Rosbridge_suite is a meta-package containing rosbridge, various front end
    packages for rosbridge like a WebSocket package, and helper packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
