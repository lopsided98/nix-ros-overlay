
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, joy, roscpp, roslaunch, roslint, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-teleop-twist-joy";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_twist_joy-release/archive/release/noetic/teleop_twist_joy/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "86330180ab0c8a15456eb72ec998798f841e1fcab88a9dd87c5c9a2a16037a2f";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch roslint rostest ];
  propagatedBuildInputs = [ geometry-msgs joy roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic joystick teleop for twist robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
