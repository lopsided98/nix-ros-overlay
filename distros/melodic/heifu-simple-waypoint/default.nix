
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mavros, roscpp, roslib, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-heifu-simple-waypoint";
  version = "0.7.7-r2";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/heifu_simple_waypoint/0.7.7-2.tar.gz";
    name = "0.7.7-2.tar.gz";
    sha256 = "66e237afdc740d1ba4b427441fd178cd501c3374094631a81e66362445759127";
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
