
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, visualization-tutorials, roslint, common-tutorials, viz, robot, geometry-tutorials, catkin, angles, ros-tutorials }:
buildRosPackage {
  pname = "ros-lunar-desktop";
  version = "1.3.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/metapackages-release/archive/release/lunar/desktop/1.3.2-0.tar.gz;
    sha256 = "0cbf59be0118aae77e3b2e42145d5089e32e771c7f0578b1d52ecf6b2babb323";
  };

  propagatedBuildInputs = [ visualization-tutorials common-tutorials viz robot roslint angles geometry-tutorials ros-tutorials ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    #license = lib.licenses.BSD;
  };
}
