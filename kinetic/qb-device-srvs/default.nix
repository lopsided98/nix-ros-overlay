
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, catkin, message-generation, message-runtime, qb-device-msgs }:
buildRosPackage {
  pname = "ros-kinetic-qb-device-srvs";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/kinetic/qb_device_srvs/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "8a2012bde9e1ab76480d38ab72f6062708f45faa5686cc9dc18e50d377181a1d";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs message-generation qb-device-msgs ];
  propagatedBuildInputs = [ std-srvs message-runtime qb-device-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the device-independent custom ROS services for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
