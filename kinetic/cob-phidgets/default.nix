
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

  buildInputs = [ sensor-msgs message-generation libphidgets std-msgs roscpp ];
  propagatedBuildInputs = [ sensor-msgs message-runtime libphidgets rospy std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_phidgets'';
    license = with lib.licenses; [ asl20 ];
  };
}
