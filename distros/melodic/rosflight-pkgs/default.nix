
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosflight, rosflight-firmware, rosflight-msgs, rosflight-sim, rosflight-utils }:
buildRosPackage {
  pname = "ros-melodic-rosflight-pkgs";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/rosflight/rosflight-release/archive/release/melodic/rosflight_pkgs/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "ef1aaec83ab37b30fd65790f9a535e548f71737cccd5123c2bda55932c4d4fa0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosflight rosflight-firmware rosflight-msgs rosflight-sim rosflight-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interface for the ROSflight autpilot stack'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
