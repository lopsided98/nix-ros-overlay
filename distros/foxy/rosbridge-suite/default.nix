
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, rosapi, rosbridge-library, rosbridge-server }:
buildRosPackage {
  pname = "ros-foxy-rosbridge-suite";
  version = "1.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/foxy/rosbridge_suite/1.1.1-2.tar.gz";
    name = "1.1.1-2.tar.gz";
    sha256 = "f42d6ab85ddd06a9a48691475f137a3cf7c847d9100e8bdb8d0092da306d3650";
  };

  buildType = "ament_cmake";
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
