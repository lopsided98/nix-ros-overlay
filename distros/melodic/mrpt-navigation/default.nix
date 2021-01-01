
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrpt-local-obstacles, mrpt-localization, mrpt-map, mrpt-rawlog, mrpt-reactivenav2d, mrpt-tutorials }:
buildRosPackage {
  pname = "ros-melodic-mrpt-navigation";
  version = "0.1.26-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_navigation/0.1.26-1.tar.gz";
    name = "0.1.26-1.tar.gz";
    sha256 = "3ff8c916893a54a39c070acc7aaed06abb6ea114504df7e5d9aa8ffa44d6dab1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mrpt-local-obstacles mrpt-localization mrpt-map mrpt-rawlog mrpt-reactivenav2d mrpt-tutorials ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools related to the Mobile Robot Programming Toolkit (MRPT).
    Refer to http://wiki.ros.org/mrpt_navigation for further documentation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
