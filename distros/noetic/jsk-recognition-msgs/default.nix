
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, jsk-footstep-msgs, message-generation, pcl-msgs, rostest, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-jsk-recognition-msgs";
  version = "1.2.17-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/noetic/jsk_recognition_msgs/1.2.17-1.tar.gz";
    name = "1.2.17-1.tar.gz";
    sha256 = "a2e7521972ca434907f45ef5ebe148792f8b00ac2e378bc76eafa375b2c73c51";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ geometry-msgs jsk-footstep-msgs message-generation pcl-msgs sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for jsk_pcl_ros and jsk_perception.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
