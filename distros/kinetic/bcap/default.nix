
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-bcap";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/fsuarez6/bcap-release/archive/release/kinetic/bcap/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "0950b4c4499ed1b8a308bceb0d9e3c213da753f414140253b546ca75254f8459";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''bCAP library as a ROS package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
