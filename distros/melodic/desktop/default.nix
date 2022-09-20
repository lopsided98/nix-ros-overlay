
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, common-tutorials, geometry-tutorials, robot, ros-tutorials, roslint, urdf-tutorial, visualization-tutorials, viz }:
buildRosPackage {
  pname = "ros-melodic-desktop";
  version = "1.4.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/melodic/desktop/1.4.1-0.tar.gz";
    name = "1.4.1-0.tar.gz";
    sha256 = "4d24671184136e854522257de40f9ce4b618b16ffeaa478f9a25c34d95cd8bc5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ angles common-tutorials geometry-tutorials robot ros-tutorials roslint urdf-tutorial visualization-tutorials viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
