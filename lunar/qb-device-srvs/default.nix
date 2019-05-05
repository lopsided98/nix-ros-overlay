
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, catkin, message-generation, message-runtime, qb-device-msgs }:
buildRosPackage {
  pname = "ros-lunar-qb-device-srvs";
  version = "2.0.1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/lunar/qb_device_srvs/2.0.1-0.tar.gz;
    sha256 = "36338d4ab0c7772f4ef8dcbef4c3eadb0ad3a98e52064ba33e68be97eb129369";
  };

  buildInputs = [ std-srvs message-generation qb-device-msgs ];
  propagatedBuildInputs = [ std-srvs message-runtime qb-device-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the device-independent custom ROS services for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
