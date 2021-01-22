
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, geometry-msgs, message-generation, message-runtime, nav-msgs, roscpp, roslint, rostest, sensor-msgs, std-msgs, tf, trajectory-msgs, ypspur }:
buildRosPackage {
  pname = "ros-melodic-ypspur-ros";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/openspur/ypspur_ros-release/archive/release/melodic/ypspur_ros/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "549a9844ee5da0f095df90904564d7c37ab28fbc7f8422a1ec00334d6032f8b9";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ diagnostic-msgs geometry-msgs message-runtime nav-msgs roscpp sensor-msgs std-msgs tf trajectory-msgs ypspur ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS wrapper for the mobile robot control platform YP-Spur'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
