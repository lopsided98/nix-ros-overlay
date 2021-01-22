
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, jsk-footstep-msgs, message-generation, pcl-msgs, rostest, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-jsk-recognition-msgs";
  version = "1.2.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/jsk_recognition_msgs/1.2.15-1.tar.gz";
    name = "1.2.15-1.tar.gz";
    sha256 = "7b447de6d42122f31b1c341bd796760a7d30ca4692557c28606e383310c0a781";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ geometry-msgs jsk-footstep-msgs message-generation pcl-msgs sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for jsk_pcl_ros and jsk_perception.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
