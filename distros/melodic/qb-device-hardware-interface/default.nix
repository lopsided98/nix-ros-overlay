
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, hardware-interface, joint-limits-interface, qb-device-msgs, qb-device-srvs, roscpp, rostest, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-melodic-qb-device-hardware-interface";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_hardware_interface/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "c369d7bd2b60b9fd20758680eef6479efb39ba220bff3b563d4a904c98c3bdd8";
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
