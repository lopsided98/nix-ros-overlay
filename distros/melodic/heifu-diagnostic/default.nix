
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mavros, roscpp, roslib, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-heifu-diagnostic";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/amferreiraBEV/heifu-release/archive/release/melodic/heifu_diagnostic/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "cbd66483c477397f0c596547b719bb98b267a279a01fa78c44a4bb8fcd933578";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mavros roscpp roslib std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Heifu diagnostic to get GPS status'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
