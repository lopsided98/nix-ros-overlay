
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, rosapi, rosbridge-library, rosbridge-server }:
buildRosPackage {
  pname = "ros-humble-rosbridge-suite";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/humble/rosbridge_suite/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "402a522e6405ddca4b00de5c4b776096485946df02792601b6e163d3582d66e6";
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
