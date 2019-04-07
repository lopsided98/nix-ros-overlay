
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, jsk-footstep-msgs, catkin, sensor-msgs, message-generation, pcl-msgs, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-jsk-recognition-msgs";
  version = "1.2.10";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/jsk_recognition_msgs/1.2.10-0.tar.gz;
    sha256 = "29666d54c5db407b249a6233047344608e66d1760ad1576db9148dcec5255a87";
  };

  buildInputs = [ message-generation jsk-footstep-msgs pcl-msgs std-msgs sensor-msgs geometry-msgs ];
  propagatedBuildInputs = [ message-generation jsk-footstep-msgs pcl-msgs std-msgs sensor-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for jsk_pcl_ros and jsk_perception.'';
    #license = lib.licenses.BSD;
  };
}
