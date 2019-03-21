
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, image-transport, sensor-msgs, cv-bridge, jsk-topic-tools, catkin, rostest, message-generation, jsk-tools, jsk-recognition-utils, message-runtime, nodelet }:
buildRosPackage {
  pname = "ros-kinetic-resized-image-transport";
  version = "1.2.9";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/resized_image_transport/1.2.9-0.tar.gz;
    sha256 = "704a8ef7a8c12812cf816b9a2f29ef1e6e69c9bfbd06936e153f2b07db3abee0";
  };

  checkInputs = [ rostest jsk-tools jsk-recognition-utils ];
  propagatedBuildInputs = [ std-srvs cv-bridge message-runtime image-transport sensor-msgs nodelet jsk-topic-tools ];
  nativeBuildInputs = [ std-srvs message-generation catkin nodelet image-transport sensor-msgs cv-bridge jsk-topic-tools ];

  meta = {
    description = ''ROS nodes to publish resized images.'';
    #license = lib.licenses.BSD;
  };
}
