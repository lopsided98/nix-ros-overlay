
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, trajectory-msgs, sensor-msgs, catkin, ypspur, roscpp, rostest, nav-msgs, rospy, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ypspur-ros";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/openspur/ypspur_ros-release/archive/release/kinetic/ypspur_ros/0.2.0-0.tar.gz;
    sha256 = "057d5fe5c390e2fa11e5bdc9eed4327f79f75125d42e05ca1500cb6440927ba2";
  };

  buildInputs = [ roslint trajectory-msgs sensor-msgs ypspur roscpp rostest nav-msgs rospy std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs ypspur roscpp nav-msgs rospy std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS wrapper for the mobile robot control platform YP-Spur'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
