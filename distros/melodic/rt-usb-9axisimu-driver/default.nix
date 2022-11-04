
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rt-usb-9axisimu-driver";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/rt-net-gbp/rt_usb_9axisimu_driver-release/archive/release/melodic/rt_usb_9axisimu_driver/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "d5601c729db3cede96fa28086a40d6bc7ec8346d5dc88ebabc7e856ec68f7989";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp roslint sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rt_usb_9axisimu_driver package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
