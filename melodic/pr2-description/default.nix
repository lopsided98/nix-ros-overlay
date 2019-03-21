
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbash, gtest, catkin, urdfdom, convex-decomposition, ivcon, xacro }:
buildRosPackage {
  pname = "ros-melodic-pr2-description";
  version = "1.12.3";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common-release/archive/release/melodic/pr2_description/1.12.3-0.tar.gz;
    sha256 = "dd73a6a8dc3713503e0f502a3d1940a80a3b96de75e68197d270bff8f3a30aa1";
  };

  checkInputs = [ gtest rosbash urdfdom ];
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
