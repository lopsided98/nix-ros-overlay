
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, serial, dynamic-reconfigure, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-teraranger";
  version = "2.0.1";

  src = fetchurl {
    url = https://github.com/Terabee/teraranger-release/archive/release/kinetic/teraranger/2.0.1-0.tar.gz;
    sha256 = "d98155bcfb53b5c1f254c3c565fe54edfadda6258ecee1b3888c57c78b8d059b";
  };

  buildInputs = [ dynamic-reconfigure std-msgs sensor-msgs serial roscpp ];
  propagatedBuildInputs = [ dynamic-reconfigure std-msgs sensor-msgs serial roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The teraranger package'';
    #license = lib.licenses.MIT;
  };
}
