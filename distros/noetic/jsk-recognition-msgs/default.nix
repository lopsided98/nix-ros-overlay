
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, jsk-footstep-msgs, message-generation, pcl-msgs, ros-environment, rostest, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-jsk-recognition-msgs";
  version = "1.2.19-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/noetic/jsk_recognition_msgs/1.2.19-1.tar.gz";
    name = "1.2.19-1.tar.gz";
    sha256 = "d97b12f2359803f4e3c1b01702076cb773629f061de45545efabbdf702da86aa";
  };

  buildType = "catkin";
  buildInputs = [ catkin ros-environment ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ geometry-msgs jsk-footstep-msgs message-generation pcl-msgs sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS messages for jsk_pcl_ros and jsk_perception.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
