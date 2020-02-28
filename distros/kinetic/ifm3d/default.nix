
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, ifm3d-core, image-transport, message-generation, nodelet, pcl-ros, roscpp, rospy, rostest, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-ifm3d";
  version = "0.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ifm/ifm3d-ros-release/archive/release/kinetic/ifm3d/0.6.2-1.tar.gz";
    name = "0.6.2-1.tar.gz";
    sha256 = "00f12ec49d8d480b19b46b5c4d5ef8cc8246b5f347d6220ed3f265fe0ee30de4";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  propagatedBuildInputs = [ cv-bridge ifm3d-core image-transport message-generation nodelet pcl-ros roscpp rospy sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ifm pmd-based 3D ToF Camera ROS package'';
    license = with lib.licenses; [ asl20 ];
  };
}
