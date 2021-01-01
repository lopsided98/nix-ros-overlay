
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, qb-device-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-qb-device-srvs";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/kinetic/qb_device_srvs/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "2aa24f945de637bb3cf66f3368e587e4c0138ff65c46fdbb6c6f084a7021f1d6";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime qb-device-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the device-independent custom ROS services for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
