
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jsoncpp, message-generation, message-runtime, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uwb-hardware-driver";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/inomuh/uwb_hardware_driver-release/archive/release/kinetic/uwb_hardware_driver/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "18de9095bb6b1a634865787ce89ff92a68625aa060a5dda8aeb67116bb6d3316";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ jsoncpp message-runtime roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uwb_hardware_driver package'';
    license = with lib.licenses; [ asl20 ];
  };
}
