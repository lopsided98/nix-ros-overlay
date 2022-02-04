
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libphidgets, message-generation, message-runtime, roscpp, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-phidgets";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_phidgets/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "0c7c881c1bf1fad1e97d015e2c70b1b8104ada7cbe317ef820b4faacab5f4704";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ libphidgets message-runtime roscpp rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_phidgets'';
    license = with lib.licenses; [ asl20 ];
  };
}
