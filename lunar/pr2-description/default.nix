
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbash, gtest, catkin, urdfdom, convex-decomposition, ivcon, xacro }:
buildRosPackage {
  pname = "ros-lunar-pr2-description";
  version = "1.12.4-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common-release/archive/release/lunar/pr2_description/1.12.4-1.tar.gz;
    sha256 = "dffea6675c61110a749b90e9cc675318ec471d02100135f98ff3c7d182336a67";
  };

  buildInputs = [ convex-decomposition ivcon ];
  checkInputs = [ gtest rosbash urdfdom ];
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
