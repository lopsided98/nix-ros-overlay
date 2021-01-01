
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, dynamic-reconfigure, dynamic-tf-publisher, eigen-conversions, geometry-msgs, image-transport, message-generation, message-runtime, nodelet, pythonPackages, roscpp, roscpp-tutorials, roslaunch, roslint, rosnode, rostest, rostime, rostopic, sensor-msgs, sound-play, std-msgs, std-srvs, tf, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-jsk-topic-tools";
  version = "2.2.11-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/kinetic/jsk_topic_tools/2.2.11-1.tar.gz";
    name = "2.2.11-1.tar.gz";
    sha256 = "38ba3d810ba24c0850f2557f0fec8b055bd3d74a2c511fe17005ef8b48d46e0b";
  };

  buildType = "catkin";
  buildInputs = [ message-generation rostest ];
  checkInputs = [ roscpp-tutorials roslint ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater dynamic-reconfigure dynamic-tf-publisher eigen-conversions geometry-msgs image-transport message-runtime nodelet pythonPackages.numpy pythonPackages.opencv3 pythonPackages.scipy roscpp roslaunch rosnode rostime rostopic sensor-msgs sound-play std-msgs std-srvs tf topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_topic_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
