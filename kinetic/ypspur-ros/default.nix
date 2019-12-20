
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, geometry-msgs, nav-msgs, roscpp, roslint, rostest, sensor-msgs, std-msgs, tf, trajectory-msgs, ypspur }:
buildRosPackage {
  pname = "ros-kinetic-ypspur-ros";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/openspur/ypspur_ros-release/archive/release/kinetic/ypspur_ros/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "fcacf803b5534c5e69530078e219593f57ddbc48896eb225d1d1abd85307731b";
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
