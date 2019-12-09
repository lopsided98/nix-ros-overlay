
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, geometry-msgs, actionlib, catkin, tf2, tf2-geometry-msgs, roscpp, message-runtime, tf2-ros, control-msgs }:
buildRosPackage {
  pname = "ros-melodic-fetch-simple-linear-controller";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/gt-rail-release/fetch_simple_linear_controller-release/archive/release/melodic/fetch_simple_linear_controller/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "d9479296511f18cc03d51eb3879bd40eb8b3d93fe77c8eb7be34b96d88959ec6";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs actionlib roscpp tf2-geometry-msgs tf2 message-generation tf2-ros control-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs actionlib roscpp tf2-geometry-msgs tf2 message-runtime tf2-ros control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Position feedback controller for simple linear motion of the fetch robot's end-effector.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
