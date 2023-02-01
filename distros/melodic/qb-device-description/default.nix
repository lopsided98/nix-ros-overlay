
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-qb-device-description";
  version = "3.0.5-r2";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_description/3.0.5-2.tar.gz";
    name = "3.0.5-2.tar.gz";
    sha256 = "305bbe654cefed0f5b3723cfd535c0092f63f5665e4f049185984ebc37397d5a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent description utilities for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
