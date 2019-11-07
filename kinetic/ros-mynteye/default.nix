
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, image-transport, sensor-msgs, cv-bridge, catkin, message-generation, message-runtime, nodelet, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ros-mynteye";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/harjeb/libmynteye-release/archive/release/kinetic/ros_mynteye/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "f43fb51a07eb1d64b658e10d3e077d27b6a7882cacfd194b652a7b4ad875ab30";
  };

  buildType = "catkin";
  buildInputs = [ image-transport sensor-msgs cv-bridge roscpp message-generation nodelet std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ image-transport sensor-msgs cv-bridge roscpp message-runtime nodelet std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mynt eye ros wrapper package'';
    license = with lib.licenses; [ "Slightech License" ];
  };
}
