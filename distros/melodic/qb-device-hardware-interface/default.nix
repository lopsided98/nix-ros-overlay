
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, hardware-interface, joint-limits-interface, qb-device-msgs, qb-device-srvs, roscpp, rostest, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-melodic-qb-device-hardware-interface";
  version = "3.0.5-r2";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_hardware_interface/3.0.5-2.tar.gz";
    name = "3.0.5-2.tar.gz";
    sha256 = "762f67ac3f6df8067295b492a63c59786f22050ec42ee28e6c39e4ea8c128ba3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ control-msgs hardware-interface joint-limits-interface qb-device-msgs qb-device-srvs roscpp transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent hardware interface for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
