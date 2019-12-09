
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, std-msgs, catkin, pcl-msgs, jsk-footstep-msgs, message-generation }:
buildRosPackage {
  pname = "ros-melodic-jsk-recognition-msgs";
  version = "1.2.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/jsk_recognition_msgs/1.2.10-0.tar.gz";
    name = "1.2.10-0.tar.gz";
    sha256 = "29666d54c5db407b249a6233047344608e66d1760ad1576db9148dcec5255a87";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs pcl-msgs jsk-footstep-msgs message-generation ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs std-msgs pcl-msgs jsk-footstep-msgs message-generation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for jsk_pcl_ros and jsk_perception.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
