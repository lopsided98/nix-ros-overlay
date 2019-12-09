
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-tutorials, robot, geometry-tutorials, common-tutorials, viz, catkin, roslint, visualization-tutorials, angles }:
buildRosPackage {
  pname = "ros-kinetic-desktop";
  version = "1.3.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/kinetic/desktop/1.3.2-0.tar.gz";
    name = "1.3.2-0.tar.gz";
    sha256 = "920aabceff3d55b8ba3c0460eb222da72e7969ff11ff76b41197f723b1b26c48";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ros-tutorials robot geometry-tutorials viz common-tutorials roslint visualization-tutorials angles ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
