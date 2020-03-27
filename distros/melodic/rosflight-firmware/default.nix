
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-rosflight-firmware";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/rosflight/rosflight-release/archive/release/melodic/rosflight_firmware/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "b01e239c396ee61224ba3d8d504de3e13e4d2134ea40d8b3a406a741c8bbcd91";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Firmware library for software-in-the-loop of the ROSflight ROS stack'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
