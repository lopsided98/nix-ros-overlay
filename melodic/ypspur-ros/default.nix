
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, trajectory-msgs, sensor-msgs, catkin, ypspur, roscpp, rostest, nav-msgs, std-msgs, diagnostic-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-ypspur-ros";
  version = "0.3.0-r1";

  src = fetchurl {
    url = https://github.com/openspur/ypspur_ros-release/archive/release/melodic/ypspur_ros/0.3.0-1.tar.gz;
    sha256 = "58b894206e18dfa8c85d4c3a067cb2c5f3b0bba75bc66e9d9dffb40833bb26f5";
  };

  buildInputs = [ trajectory-msgs sensor-msgs ypspur roscpp nav-msgs std-msgs diagnostic-msgs tf geometry-msgs ];
  checkInputs = [ rostest roslint ];
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs ypspur roscpp nav-msgs std-msgs diagnostic-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS wrapper for the mobile robot control platform YP-Spur'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
