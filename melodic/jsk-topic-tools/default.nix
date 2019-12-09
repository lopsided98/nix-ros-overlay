
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, eigen-conversions, tf, image-transport, nodelet, rostest, sensor-msgs, diagnostic-msgs, dynamic-reconfigure, rostopic, roscpp-tutorials, sound-play, std-msgs, dynamic-tf-publisher, std-srvs, pythonPackages, catkin, roscpp, topic-tools, message-generation, roslaunch, rosnode, roslint, rostime, diagnostic-updater, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-jsk-topic-tools";
  version = "2.2.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/melodic/jsk_topic_tools/2.2.10-0.tar.gz";
    name = "2.2.10-0.tar.gz";
    sha256 = "d2f76dd70a0b02a05b56658211cc0c8441dca5bea008d0ea45694d3c4cefa5e7";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs eigen-conversions tf image-transport nodelet rostest diagnostic-msgs dynamic-reconfigure rostopic std-msgs dynamic-tf-publisher std-srvs roscpp topic-tools message-generation roslaunch rosnode rostime diagnostic-updater ];
  checkInputs = [ roscpp-tutorials roslint ];
  propagatedBuildInputs = [ geometry-msgs eigen-conversions tf image-transport nodelet sensor-msgs diagnostic-msgs dynamic-reconfigure rostopic sound-play pythonPackages.numpy pythonPackages.opencv3 std-msgs dynamic-tf-publisher std-srvs roscpp topic-tools roslaunch pythonPackages.scipy rosnode rostime diagnostic-updater message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_topic_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
