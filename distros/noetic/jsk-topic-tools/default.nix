
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, dynamic-reconfigure, dynamic-tf-publisher, eigen-conversions, geometry-msgs, image-transport, message-generation, message-runtime, nodelet, python3Packages, roscpp, roscpp-tutorials, roslaunch, roslint, rosnode, rostest, rostime, rostopic, sensor-msgs, sound-play, std-msgs, std-srvs, tf, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-jsk-topic-tools";
  version = "2.2.11-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/noetic/jsk_topic_tools/2.2.11-2.tar.gz";
    name = "2.2.11-2.tar.gz";
    sha256 = "a58c0a7e52161b09eb76b6eb9a0b52b12fa7f91ec4dcd5e5c32391bf16c94263";
  };

  buildType = "catkin";
  buildInputs = [ message-generation rostest ];
  checkInputs = [ roscpp-tutorials roslint ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater dynamic-reconfigure dynamic-tf-publisher eigen-conversions geometry-msgs image-transport message-runtime nodelet python3Packages.numpy python3Packages.opencv3 python3Packages.scipy roscpp roslaunch rosnode rostime rostopic sensor-msgs sound-play std-msgs std-srvs tf topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_topic_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
