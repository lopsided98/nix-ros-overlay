
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, catkin, message-generation, message-runtime, qb-device-msgs }:
buildRosPackage {
  pname = "ros-melodic-qb-device-srvs";
  version = "2.0.1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_srvs/2.0.1-0.tar.gz";
    name = "2.0.1-0.tar.gz";
    sha256 = "3368262c75e15bb0fe756a1a54ae5dbef310d58c351c97e62766135641c68cab";
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
