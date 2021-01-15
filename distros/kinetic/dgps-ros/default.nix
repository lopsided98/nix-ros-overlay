
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dgps-ros";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/qinyunchuan/dgps_ros-release/archive/release/kinetic/dgps_ros/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "a20ffa278170ab0e8fc6c1e8cc63aaeb16c42b0931fa7f7932f21648da03008d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dgps_ros package'';
    license = with lib.licenses; [ gpl2 ];
  };
}
