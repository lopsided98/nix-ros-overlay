
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-aggregator, diagnostic-msgs, diagnostic-updater, dynamic-reconfigure, dynamic-tf-publisher, eigen-conversions, geometry-msgs, image-transport, message-generation, message-runtime, nodelet, pythonPackages, roscpp, roscpp-tutorials, roslaunch, roslint, rosnode, rostest, rostime, rostopic, sensor-msgs, sound-play, std-msgs, std-srvs, tf, topic-tools, unixtools }:
buildRosPackage {
  pname = "ros-melodic-jsk-topic-tools";
  version = "2.2.12-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/melodic/jsk_topic_tools/2.2.12-1.tar.gz";
    name = "2.2.12-1.tar.gz";
    sha256 = "2f7cb216f61223ced93c39253049e49baa9fd4878decdd5d94c80a6ca5f09280";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation rostest ];
  checkInputs = [ roscpp-tutorials roslint ];
  propagatedBuildInputs = [ diagnostic-aggregator diagnostic-msgs diagnostic-updater dynamic-reconfigure dynamic-tf-publisher eigen-conversions geometry-msgs image-transport message-runtime nodelet pythonPackages.numpy pythonPackages.opencv3 pythonPackages.scipy roscpp roslaunch rosnode rostime rostopic sensor-msgs sound-play std-msgs std-srvs tf topic-tools unixtools.ping ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_topic_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
