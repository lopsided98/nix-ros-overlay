
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, jsk-footstep-msgs, catkin, sensor-msgs, message-generation, pcl-msgs, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-jsk-recognition-msgs";
  version = "1.2.9";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/jsk_recognition_msgs/1.2.9-0.tar.gz;
    sha256 = "55d6adaac409ced3a7ea834f55339b3d4e3a98bc81647658654a8fe38855e9d5";
  };

  buildInputs = [ sensor-msgs jsk-footstep-msgs message-generation pcl-msgs std-msgs geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs jsk-footstep-msgs message-generation pcl-msgs std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for jsk_pcl_ros and jsk_perception.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
