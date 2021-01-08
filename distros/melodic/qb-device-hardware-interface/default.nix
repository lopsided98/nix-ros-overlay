
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, joint-limits-interface, qb-device-msgs, qb-device-srvs, roscpp, rostest, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-melodic-qb-device-hardware-interface";
  version = "2.0.1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_hardware_interface/2.0.1-0.tar.gz";
    name = "2.0.1-0.tar.gz";
    sha256 = "16e0d28b4e8b145ae272049cdf232830fd7e6ffc50145bcb04a1570fa1e0f791";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ hardware-interface joint-limits-interface qb-device-msgs qb-device-srvs roscpp transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent hardware interface for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
