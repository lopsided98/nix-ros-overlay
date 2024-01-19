
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, jsk-footstep-msgs, message-generation, pcl-msgs, rostest, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-jsk-recognition-msgs";
  version = "1.2.17-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/noetic/jsk_recognition_msgs/1.2.17-2.tar.gz";
    name = "1.2.17-2.tar.gz";
    sha256 = "7b9692a571499200c12d06f685490cf7bdc4336a712233b851e629eaccdaffed";
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
