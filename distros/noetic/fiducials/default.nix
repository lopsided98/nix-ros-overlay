
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aruco-detect, catkin, fiducial-msgs, fiducial-slam }:
buildRosPackage {
  pname = "ros-noetic-fiducials";
  version = "0.12.0-r1";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/fiducials-release/archive/release/noetic/fiducials/0.12.0-1.tar.gz";
    name = "0.12.0-1.tar.gz";
    sha256 = "d9836b134f19867e917a042e35177206a6e63cb4563605ef11dcaa3410714cc9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ aruco-detect fiducial-msgs fiducial-slam ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Localization using fiducial markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
