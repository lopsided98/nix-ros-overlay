
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mavros, roscpp, roslib, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-heifu-diagnostic";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/heifu_diagnostic/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "2fee9344764b77c868731c3268501c6b77fe9c4a2ff9fd2b7ac817fe8e84df24";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mavros roscpp roslib std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Heifu diagnostic to get GPS status'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
