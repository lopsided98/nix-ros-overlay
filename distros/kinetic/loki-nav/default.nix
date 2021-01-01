
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aruco-detect, catkin, fiducial-slam, move-basic }:
buildRosPackage {
  pname = "ros-kinetic-loki-nav";
  version = "0.0.2";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/loki_robot-release/archive/release/kinetic/loki_nav/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "d46c53acde43a90289f18fe686689886662945ee49851ddd8fed3bd45242302b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ aruco-detect fiducial-slam move-basic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The loki_nav package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
