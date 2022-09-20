
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mavros, roscpp, roslib, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-heifu-mavros";
  version = "0.7.7-r2";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/heifu_mavros/0.7.7-2.tar.gz";
    name = "0.7.7-2.tar.gz";
    sha256 = "7fef13c5fe3fd3fb9e7068d82f9a0268b1d6a250900c46982f0b1d732840b0e8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mavros roscpp roslib sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Heifu mavros interface'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
