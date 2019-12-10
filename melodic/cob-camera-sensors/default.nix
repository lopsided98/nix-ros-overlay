
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, cob-vision-utils, cv-bridge, image-transport, message-filters, message-generation, message-runtime, opencv3, polled-camera, roscpp, rospy, sensor-msgs, tinyxml }:
buildRosPackage {
  pname = "ros-melodic-cob-camera-sensors";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_camera_sensors/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "7ae05f21b502d10908242fefcb1e77e173b1bb9c9edef04acf9c2f4ccc6d37cb";
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
