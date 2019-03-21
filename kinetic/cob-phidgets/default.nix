
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, libphidgets, rospy, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-phidgets";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_phidgets/0.6.13-0.tar.gz;
    sha256 = "43506de54d2cc50d04945003e80d0276122e889fcbfc39a1755168ca4edb6699";
  };

  propagatedBuildInputs = [ message-runtime libphidgets rospy std-msgs sensor-msgs roscpp ];
  nativeBuildInputs = [ message-generation catkin libphidgets std-msgs sensor-msgs roscpp ];

  meta = {
    description = ''cob_phidgets'';
    #license = lib.licenses.Apache 2.0;
  };
}
