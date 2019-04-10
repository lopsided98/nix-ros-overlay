
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosflight, rosflight-sim, rosflight-utils, catkin, rosflight-firmware, rosflight-msgs }:
buildRosPackage {
  pname = "ros-lunar-rosflight-pkgs";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/rosflight/rosflight-release/archive/release/lunar/rosflight_pkgs/1.0.0-0.tar.gz;
    sha256 = "8bf2492999cfbcef3b3cfe55c53d12a61225f716158c42588c67fdd2066886e0";
  };

  propagatedBuildInputs = [ rosflight-firmware rosflight rosflight-sim rosflight-utils rosflight-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interface for the ROSflight autpilot stack'';
    #license = lib.licenses.BSD;
  };
}
