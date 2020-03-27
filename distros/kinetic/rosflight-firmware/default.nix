
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rosflight-firmware";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/rosflight/rosflight-release/archive/release/kinetic/rosflight_firmware/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "94b6cad351a4af7ccbb8c9f04062cfbe5204b9e72779ceb43a333b524f74a23e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Firmware library for software-in-the-loop of the ROSflight ROS stack'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
