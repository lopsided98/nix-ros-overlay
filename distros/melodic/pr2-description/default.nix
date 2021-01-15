
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, convex-decomposition, gtest, ivcon, rosbash, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-melodic-pr2-description";
  version = "1.12.4-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common-release/archive/release/melodic/pr2_description/1.12.4-1.tar.gz";
    name = "1.12.4-1.tar.gz";
    sha256 = "8614f27c6963296dfcd6091bb406ac8cb85b3d3ddc240ad390b6da44363d341e";
  };

  buildType = "catkin";
  buildInputs = [ convex-decomposition ivcon ];
  checkInputs = [ gtest rosbash urdfdom ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the description (mechanical, kinematic, visual,
  etc.) of the PR2 robot.  The files in this package are parsed and used by
  a variety of other components.  Most users will not interact directly
  with this package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
