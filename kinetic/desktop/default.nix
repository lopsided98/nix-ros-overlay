
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, visualization-tutorials, roslint, common-tutorials, viz, robot, geometry-tutorials, catkin, angles, ros-tutorials }:
buildRosPackage {
  pname = "ros-kinetic-desktop";
  version = "1.3.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/metapackages-release/archive/release/kinetic/desktop/1.3.2-0.tar.gz;
    sha256 = "920aabceff3d55b8ba3c0460eb222da72e7969ff11ff76b41197f723b1b26c48";
  };

  propagatedBuildInputs = [ visualization-tutorials common-tutorials viz robot roslint angles geometry-tutorials ros-tutorials ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    #license = lib.licenses.BSD;
  };
}
