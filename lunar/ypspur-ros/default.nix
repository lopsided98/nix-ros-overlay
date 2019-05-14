
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, trajectory-msgs, sensor-msgs, catkin, ypspur, roscpp, rostest, nav-msgs, std-msgs, diagnostic-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-ypspur-ros";
  version = "0.3.0-r1";

  src = fetchurl {
    url = https://github.com/openspur/ypspur_ros-release/archive/release/lunar/ypspur_ros/0.3.0-1.tar.gz;
    sha256 = "b553f20f79f88a1dc6c2d56e0d25c9b6c4a0c46c820aa9f2c2a25b5cf257c7f0";
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
