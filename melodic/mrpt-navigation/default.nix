
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mrpt-reactivenav2d, catkin, mrpt-tutorials, mrpt-rawlog, mrpt-localization, mrpt-map, mrpt-local-obstacles }:
buildRosPackage {
  pname = "ros-melodic-mrpt-navigation";
  version = "0.1.22";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_navigation/0.1.22-0.tar.gz;
    sha256 = "c3e340156f6fc706db8a3f6a940201ac4d7721a9b868cbdfba7144582162703c";
  };

  propagatedBuildInputs = [ mrpt-rawlog mrpt-reactivenav2d mrpt-local-obstacles mrpt-tutorials mrpt-localization mrpt-map ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools related to the Mobile Robot Programming Toolkit (MRPT).
    Refer to http://wiki.ros.org/mrpt_navigation for further documentation.'';
    #license = lib.licenses.BSD;
  };
}
