
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrpt-local-obstacles, mrpt-localization, mrpt-map, mrpt-rawlog, mrpt-reactivenav2d, mrpt-tutorials }:
buildRosPackage {
  pname = "ros-melodic-mrpt-navigation";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_navigation/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "6d49ff754d1b5169fc887c9982d4619f39d863e48f320e33a1c639cef52cc24b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mrpt-local-obstacles mrpt-localization mrpt-map mrpt-rawlog mrpt-reactivenav2d mrpt-tutorials ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools related to the Mobile Robot Programming Toolkit (MRPT).
    Refer to https://wiki.ros.org/mrpt_navigation for further documentation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
