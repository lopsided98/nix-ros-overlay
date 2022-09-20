
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, qb-device-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-qb-device-srvs";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/noetic/qb_device_srvs/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "0592f89dce9385bfaa55a6158511183660ef5d9dda77299de4054449d5917087";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime qb-device-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the device-independent custom ROS services for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
