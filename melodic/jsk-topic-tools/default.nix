
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

  checkInputs = [ roscpp-tutorials roslint ];
  propagatedBuildInputs = [ std-srvs pythonPackages.numpy pythonPackages.scipy pythonPackages.opencv3 dynamic-tf-publisher std-msgs diagnostic-msgs roscpp nodelet tf geometry-msgs rosnode image-transport sensor-msgs eigen-conversions sound-play diagnostic-updater message-runtime rostopic dynamic-reconfigure topic-tools roslaunch rostime ];
  nativeBuildInputs = [ roslaunch std-srvs catkin dynamic-tf-publisher std-msgs diagnostic-msgs roscpp nodelet tf geometry-msgs rosnode image-transport diagnostic-updater rostest message-generation rostopic dynamic-reconfigure topic-tools eigen-conversions rostime ];

  meta = {
    description = ''jsk_topic_tools'';
    #license = lib.licenses.BSD;
  };
}
