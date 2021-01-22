
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-transport, jsk-recognition-utils, jsk-tools, jsk-topic-tools, message-generation, message-runtime, nodelet, rostest, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-resized-image-transport";
  version = "1.2.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/resized_image_transport/1.2.15-1.tar.gz";
    name = "1.2.15-1.tar.gz";
    sha256 = "5069084cc1484d0ac0a57f844fa7ce8360071d6e9e7f9d56afb47039884faf7f";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ jsk-recognition-utils jsk-tools rostest ];
  propagatedBuildInputs = [ cv-bridge image-transport jsk-topic-tools message-runtime nodelet sensor-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS nodes to publish resized images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
