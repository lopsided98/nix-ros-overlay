
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, boost, message-filters, message-runtime, cmake-modules, catkin, tinyxml, image-transport, cv-bridge, rospy, roscpp, cob-vision-utils, polled-camera, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-cob-camera-sensors";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_camera_sensors/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "bb2f6e100a67a3658fdef4e13f347348934d78132ff348302bb5e8248102e60a";
  };

  buildType = "catkin";
  buildInputs = [ boost message-filters sensor-msgs polled-camera cmake-modules roscpp tinyxml image-transport cv-bridge opencv3 cob-vision-utils message-generation ];
  propagatedBuildInputs = [ sensor-msgs boost message-filters message-runtime polled-camera cmake-modules tinyxml image-transport cv-bridge roscpp cob-vision-utils rospy opencv3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''For more information read the readme.htm file located in'';
    license = with lib.licenses; [ asl20 ];
  };
}
