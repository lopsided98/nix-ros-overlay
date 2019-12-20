
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, geometry-msgs, nav-msgs, roscpp, roslint, rostest, sensor-msgs, std-msgs, tf, trajectory-msgs, ypspur }:
buildRosPackage {
  pname = "ros-melodic-ypspur-ros";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/openspur/ypspur_ros-release/archive/release/melodic/ypspur_ros/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "4684c1bf3511a0da7e1af9dac8d34ae309d5be0ab80e205f3ed93feeae647794";
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
