
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, boost, cob-vision-utils, image-transport, sensor-msgs, cv-bridge, message-filters, polled-camera, tinyxml, catkin, message-generation, message-runtime, rospy, roscpp, opencv3 }:
buildRosPackage {
  pname = "ros-melodic-cob-camera-sensors";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_camera_sensors/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "a5ec6f8bfeaeb396d5e7a115343f36a156ea0d4ad3e4616aa799de362709df8d";
  };

  buildType = "catkin";
  buildInputs = [ boost cmake-modules cob-vision-utils image-transport sensor-msgs cv-bridge message-filters polled-camera tinyxml message-generation roscpp opencv3 ];
  propagatedBuildInputs = [ cmake-modules boost cob-vision-utils image-transport sensor-msgs cv-bridge message-filters tinyxml polled-camera message-runtime rospy roscpp opencv3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''For more information read the readme.htm file located in'';
    license = with lib.licenses; [ asl20 ];
  };
}
