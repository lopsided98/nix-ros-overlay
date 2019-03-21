
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbridge-library, rosapi, catkin, rosbridge-server }:
buildRosPackage {
  pname = "ros-melodic-rosbridge-suite";
  version = "0.10.2";

  src = fetchurl {
    url = https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/melodic/rosbridge_suite/0.10.2-0.tar.gz;
    sha256 = "8d7bcc84b614bc55cf4eb15768b1f51c87a3eacdcd6668a30435c1983149cb87";
  };

  propagatedBuildInputs = [ rosbridge-library rosapi rosbridge-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rosbridge provides a JSON API to ROS functionality for non-ROS programs.
    There are a variety of front ends that interface with rosbridge, including
    a WebSocket server for web browsers to interact with.

    Rosbridge_suite is a meta-package containing rosbridge, various front end
    packages for rosbridge like a WebSocket package, and helper packages.'';
    #license = lib.licenses.BSD;
  };
}
