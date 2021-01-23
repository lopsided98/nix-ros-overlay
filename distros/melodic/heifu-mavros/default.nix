
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mavros, roscpp, roslib, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-heifu-mavros";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/amferreiraBEV/heifu-release/archive/release/melodic/heifu_mavros/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "f79d0e363120fb97edc96d612bcc98d5c86716e54b23523849346730e1a133e6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mavros roscpp roslib sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Heifu mavros interface'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
