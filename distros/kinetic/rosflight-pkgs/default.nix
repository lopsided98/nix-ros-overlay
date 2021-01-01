
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosflight, rosflight-firmware, rosflight-msgs, rosflight-sim, rosflight-utils }:
buildRosPackage {
  pname = "ros-kinetic-rosflight-pkgs";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/rosflight/rosflight-release/archive/release/kinetic/rosflight_pkgs/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "bd151bf889152aa3d1014ca0cd47b9d105738f3a2d9e47c14fc522e27b9994c2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosflight rosflight-firmware rosflight-msgs rosflight-sim rosflight-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interface for the ROSflight autpilot stack'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
