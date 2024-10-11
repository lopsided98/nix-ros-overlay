
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosapi, rosbridge-library, rosbridge-server }:
buildRosPackage {
  pname = "ros-iron-rosbridge-suite";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/iron/rosbridge_suite/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "f0a4f13695e19bb37f52d4b0b895f4f38eeda47d448ac5199a1e849d8515dad5";
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
