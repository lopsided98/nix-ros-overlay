
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-transport, jsk-recognition-utils, jsk-tools, jsk-topic-tools, message-generation, message-runtime, nodelet, rostest, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-resized-image-transport";
  version = "1.2.19-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/noetic/resized_image_transport/1.2.19-1.tar.gz";
    name = "1.2.19-1.tar.gz";
    sha256 = "cacb1b30b6a83c867582a8f3614278ebdebfc17cce0133ad5514b4872ca9a9bc";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ jsk-recognition-utils jsk-tools rostest ];
  propagatedBuildInputs = [ cv-bridge image-transport jsk-topic-tools message-runtime nodelet sensor-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS nodes to publish resized images.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
