
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosflight, rosflight-firmware, rosflight-msgs, rosflight-sim, rosflight-utils }:
buildRosPackage {
  pname = "ros-kinetic-rosflight-pkgs";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/rosflight/rosflight-release/archive/release/kinetic/rosflight_pkgs/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "677806d2c97a015f0de8925424bf615d4959362c7e6d712fa8213a695ad6ac4a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosflight rosflight-firmware rosflight-msgs rosflight-sim rosflight-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interface for the ROSflight autpilot stack'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
