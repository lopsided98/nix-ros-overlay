
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosapi, rosbridge-library, rosbridge-server }:
buildRosPackage {
  pname = "ros-melodic-rosbridge-suite";
  version = "0.11.16-r2";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/melodic/rosbridge_suite/0.11.16-2.tar.gz";
    name = "0.11.16-2.tar.gz";
    sha256 = "750a40ad2c07173f5f5de3bb9ac49039315b310c4c6a85432c69b1169522e9ba";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
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
