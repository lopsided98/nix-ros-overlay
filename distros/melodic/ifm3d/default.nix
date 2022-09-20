
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, ifm3d-core, image-transport, message-generation, nodelet, pcl-ros, roscpp, rospy, rostest, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-ifm3d";
  version = "0.6.2-r2";

  src = fetchurl {
    url = "https://github.com/ifm/ifm3d-ros-release/archive/release/melodic/ifm3d/0.6.2-2.tar.gz";
    name = "0.6.2-2.tar.gz";
    sha256 = "71bf4886c74200afc466308abfadec6ff8c44a22c77f7d82603642e613d74b23";
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
