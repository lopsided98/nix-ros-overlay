
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosflight, rosflight-firmware, rosflight-msgs, rosflight-sim, rosflight-utils }:
buildRosPackage {
  pname = "ros-melodic-rosflight-pkgs";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/rosflight/rosflight-release/archive/release/melodic/rosflight_pkgs/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "d35450427eefe3c64eb5c88a514f4462e73f75ef53cf9a66bf80521380ef309b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosflight rosflight-firmware rosflight-msgs rosflight-sim rosflight-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interface for the ROSflight autpilot stack'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
