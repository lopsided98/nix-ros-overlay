
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gtest, catkin, urdfdom, convex-decomposition, ivcon, xacro }:
buildRosPackage {
  pname = "ros-kinetic-pr2-description";
  version = "1.12.2";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common-release/archive/release/kinetic/pr2_description/1.12.2-0.tar.gz;
    sha256 = "c265964655deb371058b06a91b4489769b3124b903446e3991c05840ec94283c";
  };

  checkInputs = [ gtest urdfdom ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin convex-decomposition ivcon ];

  meta = {
    description = ''This package contains the description (mechanical, kinematic, visual,
  etc.) of the PR2 robot.  The files in this package are parsed and used by
  a variety of other components.  Most users will not interact directly
  with this package.'';
    #license = lib.licenses.BSD;
  };
}
