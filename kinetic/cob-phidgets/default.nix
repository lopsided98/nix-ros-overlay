
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, libphidgets, rospy, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-phidgets";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_phidgets/0.6.14-1.tar.gz;
    sha256 = "e5563a2d1a6f62b0e242f950f86e2f2986774795d56cd404197fc24a30ed7b5f";
  };

  buildInputs = [ sensor-msgs message-generation libphidgets std-msgs roscpp ];
  propagatedBuildInputs = [ sensor-msgs message-runtime libphidgets rospy std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_phidgets'';
    license = with lib.licenses; [ asl20 ];
  };
}
