
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mrpt-reactivenav2d, catkin, mrpt-tutorials, mrpt-rawlog, mrpt-localization, mrpt-map, mrpt-local-obstacles }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-navigation";
  version = "0.1.26-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/mrpt_navigation/0.1.26-1.tar.gz";
    name = "0.1.26-1.tar.gz";
    sha256 = "8f0bc49220ecac68d1242028b84ab33707f2b873ebe80c12c68bba7741914bf3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mrpt-reactivenav2d mrpt-tutorials mrpt-localization mrpt-map mrpt-rawlog mrpt-local-obstacles ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools related to the Mobile Robot Programming Toolkit (MRPT).
    Refer to http://wiki.ros.org/mrpt_navigation for further documentation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
