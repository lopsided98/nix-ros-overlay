
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rt-usb-9axisimu-driver";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/rt-net-gbp/rt_usb_9axisimu_driver-release/archive/release/kinetic/rt_usb_9axisimu_driver/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "853dc5fbbd52b2f61b1133a3f6d575a405d069422e5f743495fe4c3dcca0bfcc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp roslint sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rt_usb_9axisimu_driver package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
