
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, cob-vision-utils, cv-bridge, image-transport, message-filters, message-generation, message-runtime, opencv3, polled-camera, roscpp, rospy, sensor-msgs, tinyxml }:
buildRosPackage {
  pname = "ros-kinetic-cob-camera-sensors";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_camera_sensors/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "bb2f6e100a67a3658fdef4e13f347348934d78132ff348302bb5e8248102e60a";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ boost cmake-modules cob-vision-utils cv-bridge image-transport message-filters message-runtime opencv3 polled-camera roscpp rospy sensor-msgs tinyxml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''For more information read the readme.htm file located in'';
    license = with lib.licenses; [ asl20 ];
  };
}
