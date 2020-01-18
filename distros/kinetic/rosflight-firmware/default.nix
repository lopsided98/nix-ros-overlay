
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rosflight-firmware";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/rosflight/rosflight-release/archive/release/kinetic/rosflight_firmware/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "f67261299a26a7c6a6b69c245e555ddc8efd3621d422e2f7f23fd29ddee21f54";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Firmware library for software-in-the-loop of the ROSflight ROS stack'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
