
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, qb-device-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-qb-device-srvs";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/noetic/qb_device_srvs/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "8f2882e27eb15b82e19f1f63a19b572f1d32fefc4efb834af7529561b5241dd4";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime qb-device-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the device-independent custom ROS services for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
