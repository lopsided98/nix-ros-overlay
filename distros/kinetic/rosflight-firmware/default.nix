
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rosflight-firmware";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/rosflight/rosflight-release/archive/release/kinetic/rosflight_firmware/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "2253298d9c713833c91e59217fdff27af3019aaf5f6f1bf65bff82406a193e32";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Firmware library for software-in-the-loop of the ROSflight ROS stack'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
