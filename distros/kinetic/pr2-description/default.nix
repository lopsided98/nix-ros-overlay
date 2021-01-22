
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, convex-decomposition, gtest, ivcon, rosbash, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-kinetic-pr2-description";
  version = "1.12.4-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common-release/archive/release/kinetic/pr2_description/1.12.4-1.tar.gz";
    name = "1.12.4-1.tar.gz";
    sha256 = "91720940ce739f29eceec5ff61745789b66644d78b650a4dfde345a1d0ab2298";
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
