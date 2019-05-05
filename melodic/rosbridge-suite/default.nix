
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbridge-library, rosapi, catkin, rosbridge-server }:
buildRosPackage {
  pname = "ros-melodic-rosbridge-suite";
  version = "0.11.0";

  src = fetchurl {
    url = https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/melodic/rosbridge_suite/0.11.0-0.tar.gz;
    sha256 = "76c2dc5b9525b17dc6862ac1781cd94a7d6df2df81457fe9731a6012c32b0323";
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
