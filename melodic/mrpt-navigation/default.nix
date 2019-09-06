
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mrpt-reactivenav2d, catkin, mrpt-tutorials, mrpt-rawlog, mrpt-localization, mrpt-map, mrpt-local-obstacles }:
buildRosPackage {
  pname = "ros-melodic-mrpt-navigation";
  version = "0.1.24";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_navigation/0.1.24-0.tar.gz";
    name = "0.1.24-0.tar.gz";
    sha256 = "a54df1d35bffe4dbed64661144226c3077f14fbcb2097c6e84720ecaca7f7540";
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
