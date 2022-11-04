
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mavros, roscpp, roslib, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-heifu-diagnostic";
  version = "0.7.7-r2";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/heifu_diagnostic/0.7.7-2.tar.gz";
    name = "0.7.7-2.tar.gz";
    sha256 = "cf52fdd4185ce056dfce243bb15ba3a2335a32d155c484d4c6704a1f2e2b3ddf";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mavros roscpp roslib std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Heifu diagnostic to get GPS status'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
