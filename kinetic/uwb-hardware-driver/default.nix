
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uwb-hardware-driver";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/inomuh/uwb_hardware_driver-release/archive/release/kinetic/uwb_hardware_driver/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "89972f595fb5ff5cfe5fd62f0738c98f9e5fe17923f217cc48eea0b2f8d0eed1";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uwb_hardware_driver package'';
    license = with lib.licenses; [ asl20 ];
  };
}
