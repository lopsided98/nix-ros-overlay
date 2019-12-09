
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, jsk-topic-tools, message-generation, sensor-msgs, std-srvs, catkin, jsk-recognition-utils, image-transport, cv-bridge, nodelet, jsk-tools, message-runtime, rostest }:
buildRosPackage {
  pname = "ros-kinetic-resized-image-transport";
  version = "1.2.9";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/resized_image_transport/1.2.9-0.tar.gz";
    name = "1.2.9-0.tar.gz";
    sha256 = "704a8ef7a8c12812cf816b9a2f29ef1e6e69c9bfbd06936e153f2b07db3abee0";
  };

  buildType = "catkin";
  buildInputs = [ jsk-topic-tools sensor-msgs std-srvs image-transport cv-bridge nodelet message-generation ];
  checkInputs = [ jsk-tools rostest jsk-recognition-utils ];
  propagatedBuildInputs = [ jsk-topic-tools sensor-msgs std-srvs image-transport cv-bridge nodelet message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS nodes to publish resized images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
