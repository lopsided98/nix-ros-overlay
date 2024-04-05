
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, geometry-msgs, message-generation, message-runtime, nav-msgs, roscpp, roslint, rostest, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, trajectory-msgs, ypspur }:
buildRosPackage {
  pname = "ros-noetic-ypspur-ros";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/openspur/ypspur_ros-release/archive/release/noetic/ypspur_ros/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "72c1c694d5b9426c98d08b21064a6c61847f4fce78fa9d089b03f388018c08ba";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ diagnostic-msgs geometry-msgs message-runtime nav-msgs roscpp sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros trajectory-msgs ypspur ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS wrapper for the mobile robot control platform YP-Spur";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
