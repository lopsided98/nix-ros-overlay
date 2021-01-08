
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, convex-decomposition, gtest, ivcon, rosbash, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-noetic-pr2-description";
  version = "1.13.0-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common-release/archive/release/noetic/pr2_description/1.13.0-1.tar.gz";
    name = "1.13.0-1.tar.gz";
    sha256 = "b6f1dc6a4f7e027ba1a6625e6faa720a8e12a55ff18348f122a6e19eff51c463";
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
