
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, ifm3d-core, image-transport, message-generation, nodelet, pcl-ros, roscpp, rospy, rostest, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-ifm3d";
  version = "0.6.2-r3";

  src = fetchurl {
    url = "https://github.com/ifm/ifm3d-ros-release/archive/release/noetic/ifm3d/0.6.2-3.tar.gz";
    name = "0.6.2-3.tar.gz";
    sha256 = "491b816559556b3274cd25f3c926ca00335f646f9016cd39c1950f62a3ed9984";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ cv-bridge ifm3d-core image-transport message-generation nodelet pcl-ros roscpp rospy sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ifm pmd-based 3D ToF Camera ROS package'';
    license = with lib.licenses; [ asl20 ];
  };
}
