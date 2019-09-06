
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosflight, rosflight-sim, rosflight-utils, catkin, rosflight-firmware, rosflight-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosflight-pkgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/rosflight/rosflight-release/archive/release/kinetic/rosflight_pkgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "0a4cdd23fb6decf7281ca2e6ebc78e3c51ef699f9fbdbe7e079a581df2f714ca";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosflight rosflight-sim rosflight-utils rosflight-firmware rosflight-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interface for the ROSflight autpilot stack'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
