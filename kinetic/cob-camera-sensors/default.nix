
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, boost, cob-vision-utils, image-transport, sensor-msgs, cv-bridge, message-filters, polled-camera, tinyxml, catkin, message-generation, message-runtime, rospy, roscpp, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-cob-camera-sensors";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_camera_sensors/0.6.14-1.tar.gz;
    sha256 = "74b4c520a399737465fcc25608d039084d5e59c2d28f3f7ec870f0680b169185";
  };

  buildInputs = [ boost cmake-modules cob-vision-utils image-transport sensor-msgs cv-bridge message-filters polled-camera tinyxml message-generation roscpp opencv3 ];
  propagatedBuildInputs = [ boost cmake-modules cob-vision-utils image-transport sensor-msgs cv-bridge message-filters polled-camera tinyxml message-runtime rospy roscpp opencv3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''For more information read the readme.htm file located in'';
    license = with lib.licenses; [ asl20 ];
  };
}
