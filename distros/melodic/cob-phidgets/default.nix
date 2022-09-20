
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libphidgets, message-generation, message-runtime, roscpp, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-phidgets";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_phidgets/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "35474500e6a5d8852d96341fde60a8f92a55638d806e29f7939a9f3ba9ab7d34";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ libphidgets message-runtime roscpp rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_phidgets'';
    license = with lib.licenses; [ asl20 ];
  };
}
