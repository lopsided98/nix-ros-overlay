
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, image-transport, sensor-msgs, cv-bridge, jsk-topic-tools, catkin, rostest, message-generation, jsk-tools, jsk-recognition-utils, message-runtime, nodelet }:
buildRosPackage {
  pname = "ros-melodic-resized-image-transport";
  version = "1.2.10";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/resized_image_transport/1.2.10-0.tar.gz;
    sha256 = "6631d7021aa7bf102ca9be8925ec2fdc5dc4fd4ac4effa126ae8df74bb33232c";
  };

  checkInputs = [ rostest jsk-tools jsk-recognition-utils ];
  propagatedBuildInputs = [ std-srvs cv-bridge message-runtime image-transport sensor-msgs nodelet jsk-topic-tools ];
  nativeBuildInputs = [ std-srvs message-generation catkin nodelet image-transport sensor-msgs cv-bridge jsk-topic-tools ];

  meta = {
    description = ''ROS nodes to publish resized images.'';
    #license = lib.licenses.BSD;
  };
}
