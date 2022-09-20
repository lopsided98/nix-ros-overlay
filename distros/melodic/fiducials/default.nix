
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aruco-detect, catkin, fiducial-msgs, fiducial-slam }:
buildRosPackage {
  pname = "ros-melodic-fiducials";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/fiducials-release/archive/release/melodic/fiducials/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "cdfb60356b3852cae3028e4e0fb674fffb1f6a65d825fe26f12fab272b5dc3a2";
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
