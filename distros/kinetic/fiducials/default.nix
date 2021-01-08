
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aruco-detect, catkin, fiducial-msgs, fiducial-slam }:
buildRosPackage {
  pname = "ros-kinetic-fiducials";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/fiducials-release/archive/release/kinetic/fiducials/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "1fa4cb640cd78f770eb1ab8dc3c379aa1d19abd2fc9072ea6d690b86aad6c971";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ aruco-detect fiducial-msgs fiducial-slam ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Localization using fiducial markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
