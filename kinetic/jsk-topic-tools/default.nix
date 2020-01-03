
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, dynamic-reconfigure, dynamic-tf-publisher, eigen-conversions, geometry-msgs, image-transport, message-generation, message-runtime, nodelet, pythonPackages, roscpp, roscpp-tutorials, roslaunch, roslint, rosnode, rostest, rostime, rostopic, sensor-msgs, sound-play, std-msgs, std-srvs, tf, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-jsk-topic-tools";
  version = "2.2.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/kinetic/jsk_topic_tools/2.2.10-0.tar.gz";
    name = "2.2.10-0.tar.gz";
    sha256 = "2159e5b0217e8306979562dee0962cb77351ba5578182b68bd0d823ff614d60d";
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
