
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosapi, rosbridge-library, catkin, rosbridge-server }:
buildRosPackage {
  pname = "ros-kinetic-rosbridge-suite";
  version = "0.11.3-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/kinetic/rosbridge_suite/0.11.3-1.tar.gz";
    name = "0.11.3-1.tar.gz";
    sha256 = "626b4080bcfb8523d8a1472b1ae09a11898a82ad9c512d85161d91cb794db548";
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
