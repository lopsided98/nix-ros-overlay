
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, libphidgets, rospy, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-cob-phidgets";
  version = "0.7.0-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_phidgets/0.7.0-1.tar.gz;
    sha256 = "0ede0e6d1c590d499be341247f014cbd870d0d66683956f720b277fc505e7b25";
  };

  buildInputs = [ sensor-msgs message-generation libphidgets std-msgs roscpp ];
  propagatedBuildInputs = [ sensor-msgs message-runtime libphidgets rospy std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_phidgets'';
    license = with lib.licenses; [ asl20 ];
  };
}
