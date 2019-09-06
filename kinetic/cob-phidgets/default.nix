
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, libphidgets, rospy, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-phidgets";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_phidgets/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "c43743cc90b3b154795fe62a86ff42f4f2ebf42a6ebb3abc12ed8372f050ce49";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-generation libphidgets std-msgs roscpp ];
  propagatedBuildInputs = [ sensor-msgs message-runtime libphidgets rospy std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_phidgets'';
    license = with lib.licenses; [ asl20 ];
  };
}
