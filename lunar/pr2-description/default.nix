
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gtest, catkin, urdfdom, convex-decomposition, ivcon, xacro }:
buildRosPackage {
  pname = "ros-lunar-pr2-description";
  version = "1.12.2";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common-release/archive/release/lunar/pr2_description/1.12.2-0.tar.gz;
    sha256 = "bafc809f96ebad11c6df745227327d3f0965f3aad787343d51853e65cba5c4af";
  };

  buildInputs = [ convex-decomposition ivcon ];
  checkInputs = [ gtest urdfdom ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the description (mechanical, kinematic, visual,
  etc.) of the PR2 robot.  The files in this package are parsed and used by
  a variety of other components.  Most users will not interact directly
  with this package.'';
    #license = lib.licenses.BSD;
  };
}
