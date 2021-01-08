
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rt-usb-9axisimu-driver";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/rt-net-gbp/rt_usb_9axisimu_driver-release/archive/release/melodic/rt_usb_9axisimu_driver/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "5e87b5487d5b3137aa2aa185ec87ebb0b44ca2e13bfbd4bff28aeae41a0c6482";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp roslint sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rt_usb_9axisimu_driver package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
