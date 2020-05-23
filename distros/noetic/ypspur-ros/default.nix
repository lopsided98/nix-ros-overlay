
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, geometry-msgs, nav-msgs, roscpp, roslint, rostest, sensor-msgs, std-msgs, tf, trajectory-msgs, ypspur }:
buildRosPackage {
  pname = "ros-noetic-ypspur-ros";
  version = "0.3.1-r3";

  src = fetchurl {
    url = "https://github.com/openspur/ypspur_ros-release/archive/release/noetic/ypspur_ros/0.3.1-3.tar.gz";
    name = "0.3.1-3.tar.gz";
    sha256 = "4af00a611328c14c20b4513843af572b757d55e2d5bebdb034a4aca1fe22971d";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ diagnostic-msgs geometry-msgs nav-msgs roscpp sensor-msgs std-msgs tf trajectory-msgs ypspur ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS wrapper for the mobile robot control platform YP-Spur'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
