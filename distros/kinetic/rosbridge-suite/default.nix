
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosapi, rosbridge-library, rosbridge-server }:
buildRosPackage {
  pname = "ros-kinetic-rosbridge-suite";
  version = "0.11.12-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/kinetic/rosbridge_suite/0.11.12-1.tar.gz";
    name = "0.11.12-1.tar.gz";
    sha256 = "6367ee411108b206984bf860a59c9a87dad9864fd72743af13113041fef8664b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosapi rosbridge-library rosbridge-server ];
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
