
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, jsk-footstep-msgs, message-generation, pcl-msgs, rostest, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-jsk-recognition-msgs";
  version = "1.2.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/noetic/jsk_recognition_msgs/1.2.15-1.tar.gz";
    name = "1.2.15-1.tar.gz";
    sha256 = "a5a024053de6d9f174a22c418696d6097d53ab3b283255a359bb0d463ac3ea2f";
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
