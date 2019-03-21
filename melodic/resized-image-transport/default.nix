
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, image-transport, sensor-msgs, cv-bridge, jsk-topic-tools, catkin, rostest, message-generation, jsk-tools, jsk-recognition-utils, message-runtime, nodelet }:
buildRosPackage {
  pname = "ros-melodic-resized-image-transport";
  version = "1.2.9";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/resized_image_transport/1.2.9-0.tar.gz;
    sha256 = "4316209db5ebfe7f3583e6ff7de1dfcb6aab2d4bad01547efe45c96a00c93508";
  };

  checkInputs = [ rostest jsk-tools jsk-recognition-utils ];
  propagatedBuildInputs = [ std-srvs cv-bridge message-runtime image-transport sensor-msgs nodelet jsk-topic-tools ];
  nativeBuildInputs = [ std-srvs message-generation catkin nodelet image-transport sensor-msgs cv-bridge jsk-topic-tools ];

  meta = {
    description = ''ROS nodes to publish resized images.'';
    #license = lib.licenses.BSD;
  };
}
