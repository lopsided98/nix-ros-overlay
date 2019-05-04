
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-tf-publisher, diagnostic-msgs, tf, geometry-msgs, roslint, image-transport, pythonPackages, sound-play, message-generation, message-runtime, eigen-conversions, roslaunch, rostime, std-srvs, catkin, std-msgs, roscpp, nodelet, rosnode, roscpp-tutorials, sensor-msgs, diagnostic-updater, rostest, rostopic, dynamic-reconfigure, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-jsk-topic-tools";
  version = "2.2.10";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_common-release/archive/release/kinetic/jsk_topic_tools/2.2.10-0.tar.gz;
    sha256 = "2159e5b0217e8306979562dee0962cb77351ba5578182b68bd0d823ff614d60d";
  };

  buildInputs = [ dynamic-tf-publisher diagnostic-msgs tf geometry-msgs image-transport message-generation eigen-conversions rostime roslaunch std-srvs std-msgs roscpp nodelet rosnode diagnostic-updater rostest rostopic dynamic-reconfigure topic-tools ];
  checkInputs = [ roscpp-tutorials roslint ];
  propagatedBuildInputs = [ pythonPackages.scipy dynamic-tf-publisher diagnostic-msgs tf geometry-msgs image-transport sound-play message-runtime roslaunch rostime eigen-conversions std-srvs pythonPackages.numpy pythonPackages.opencv3 std-msgs roscpp nodelet rosnode sensor-msgs diagnostic-updater rostopic dynamic-reconfigure topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_topic_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
