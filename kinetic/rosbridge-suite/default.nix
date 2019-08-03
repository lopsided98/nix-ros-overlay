
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbridge-library, rosapi, catkin, rosbridge-server }:
buildRosPackage {
  pname = "ros-kinetic-rosbridge-suite";
  version = "0.11.2-r1";

  src = fetchurl {
    url = https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/kinetic/rosbridge_suite/0.11.2-1.tar.gz;
    sha256 = "728c880d3c246840cae7167b63e1aa855e5c31b53aa2db55ae1ca92881e36be5";
  };

  propagatedBuildInputs = [ rosbridge-library rosapi rosbridge-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rosbridge provides a JSON API to ROS functionality for non-ROS programs.
    There are a variety of front ends that interface with rosbridge, including
    a WebSocket server for web browsers to interact with.

    Rosbridge_suite is a meta-package containing rosbridge, various front end
    packages for rosbridge like a WebSocket package, and helper packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
