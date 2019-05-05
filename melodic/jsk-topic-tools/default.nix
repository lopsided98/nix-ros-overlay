
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-tf-publisher, diagnostic-msgs, tf, geometry-msgs, roslint, image-transport, pythonPackages, sound-play, message-generation, message-runtime, eigen-conversions, roslaunch, rostime, std-srvs, catkin, std-msgs, roscpp, nodelet, rosnode, roscpp-tutorials, sensor-msgs, diagnostic-updater, rostest, rostopic, dynamic-reconfigure, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-jsk-topic-tools";
  version = "2.2.10";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_common-release/archive/release/melodic/jsk_topic_tools/2.2.10-0.tar.gz;
    sha256 = "d2f76dd70a0b02a05b56658211cc0c8441dca5bea008d0ea45694d3c4cefa5e7";
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
