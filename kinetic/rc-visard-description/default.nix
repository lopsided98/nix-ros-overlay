
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, catkin, xacro }:
buildRosPackage {
  pname = "ros-kinetic-rc-visard-description";
  version = "2.5.0";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_visard-release/archive/release/kinetic/rc_visard_description/2.5.0-0.tar.gz;
    sha256 = "09be471d29a73a8287ccec1e642e6319617ed123357a83dde87f606f569b6340";
  };

  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization package for rc_visard'';
    #license = lib.licenses.BSD;
  };
}
