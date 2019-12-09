
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-limits-interface, urdf, hardware-interface, catkin, qb-device-srvs, transmission-interface, roscpp, qb-device-msgs, rostest }:
buildRosPackage {
  pname = "ros-melodic-qb-device-hardware-interface";
  version = "2.0.1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_hardware_interface/2.0.1-0.tar.gz";
    name = "2.0.1-0.tar.gz";
    sha256 = "16e0d28b4e8b145ae272049cdf232830fd7e6ffc50145bcb04a1570fa1e0f791";
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
