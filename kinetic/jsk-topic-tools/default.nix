
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

  buildInputs = [ roslaunch std-srvs dynamic-tf-publisher std-msgs diagnostic-msgs roscpp nodelet tf geometry-msgs rosnode image-transport diagnostic-updater rostest message-generation rostopic dynamic-reconfigure topic-tools eigen-conversions rostime ];
  checkInputs = [ roscpp-tutorials roslint ];
  propagatedBuildInputs = [ std-srvs pythonPackages.numpy pythonPackages.scipy pythonPackages.opencv3 dynamic-tf-publisher std-msgs diagnostic-msgs roscpp nodelet tf geometry-msgs rosnode image-transport sensor-msgs eigen-conversions sound-play diagnostic-updater message-runtime rostopic dynamic-reconfigure topic-tools roslaunch rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_topic_tools'';
    #license = lib.licenses.BSD;
  };
}
