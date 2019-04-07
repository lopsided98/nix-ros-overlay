
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, rviz, robot-state-publisher, roslaunch, tf, joint-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-kinetic-tra1-description";
  version = "1.0.10";

  src = fetchurl {
    url = https://github.com/tork-a/minas-release/archive/release/kinetic/tra1_description/1.0.10-0.tar.gz;
    sha256 = "2c0bad1d3a63bff14d3be1b3f5f62f849f4024a926de179672c7f77e94092db1";
  };

  buildInputs = [ xacro ];
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ rviz robot-state-publisher tf joint-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the description (mechanical, kinematic, visual,  etc.) of the TRA1 robot. The files in this package are parsed and used by a variety of other components.  Most users will not interact directly with this package.'';
    #license = lib.licenses.GPLv2;
  };
}
