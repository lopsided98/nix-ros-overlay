
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, visualization-tutorials, roslint, common-tutorials, viz, robot, geometry-tutorials, catkin, angles, urdf-tutorial, ros-tutorials }:
buildRosPackage {
  pname = "ros-melodic-desktop";
  version = "1.4.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/metapackages-release/archive/release/melodic/desktop/1.4.1-0.tar.gz;
    sha256 = "4d24671184136e854522257de40f9ce4b618b16ffeaa478f9a25c34d95cd8bc5";
  };

  propagatedBuildInputs = [ visualization-tutorials common-tutorials viz robot roslint geometry-tutorials angles urdf-tutorial ros-tutorials ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    #license = lib.licenses.BSD;
  };
}
