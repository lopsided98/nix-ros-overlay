
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, ifm3d-core, image-transport, message-generation, nodelet, pcl-ros, roscpp, rospy, rostest, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-ifm3d";
  version = "0.6.2-r2";

  src = fetchurl {
    url = "https://github.com/ifm/ifm3d-ros-release/archive/release/kinetic/ifm3d/0.6.2-2.tar.gz";
    name = "0.6.2-2.tar.gz";
    sha256 = "267cdb74a0407c2b0e27a4ff91d596023579fa2d241ef2bdb04e294d88fa8f82";
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
