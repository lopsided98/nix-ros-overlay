
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-limits-interface, urdf, hardware-interface, catkin, qb-device-srvs, transmission-interface, roscpp, qb-device-msgs, rostest }:
buildRosPackage {
  pname = "ros-kinetic-qb-device-hardware-interface";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/kinetic/qb_device_hardware_interface/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "e0c070a97c147b42df1bd0f4f974a9d493b368fd9a1dc35313ba803e676c06c9";
  };

  buildType = "catkin";
  buildInputs = [ urdf joint-limits-interface hardware-interface qb-device-srvs transmission-interface roscpp qb-device-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ urdf joint-limits-interface hardware-interface qb-device-srvs transmission-interface roscpp qb-device-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent hardware interface for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
