
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, jsk-topic-tools, message-generation, sensor-msgs, std-srvs, catkin, jsk-recognition-utils, image-transport, cv-bridge, nodelet, jsk-tools, message-runtime, rostest }:
buildRosPackage {
  pname = "ros-melodic-resized-image-transport";
  version = "1.2.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/resized_image_transport/1.2.10-0.tar.gz";
    name = "1.2.10-0.tar.gz";
    sha256 = "6631d7021aa7bf102ca9be8925ec2fdc5dc4fd4ac4effa126ae8df74bb33232c";
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
