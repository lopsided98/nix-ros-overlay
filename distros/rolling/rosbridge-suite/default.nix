
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosapi, rosbridge-library, rosbridge-server }:
buildRosPackage {
  pname = "ros-rolling-rosbridge-suite";
  version = "1.3.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/rolling/rosbridge_suite/1.3.2-2.tar.gz";
    name = "1.3.2-2.tar.gz";
    sha256 = "473c8fa03f4e183ea67d56a0bc569dce0d62d1b6166fc9b72ea6b0cb2671beb2";
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
