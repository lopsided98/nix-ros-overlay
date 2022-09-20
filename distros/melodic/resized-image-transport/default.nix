
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-transport, jsk-recognition-utils, jsk-tools, jsk-topic-tools, message-generation, message-runtime, nodelet, rostest, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-resized-image-transport";
  version = "1.2.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/resized_image_transport/1.2.15-1.tar.gz";
    name = "1.2.15-1.tar.gz";
    sha256 = "9d309c167c2b324d9603b0212fc3f4d0923f2c670d02f9ab3695a6721f4731d9";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ jsk-recognition-utils jsk-tools rostest ];
  propagatedBuildInputs = [ cv-bridge image-transport jsk-topic-tools message-runtime nodelet sensor-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS nodes to publish resized images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
