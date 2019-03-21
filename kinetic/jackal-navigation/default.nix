
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gmapping, map-server, amcl, catkin, move-base, urdf, roslaunch, xacro }:
buildRosPackage {
  pname = "ros-kinetic-jackal-navigation";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/jackal-release/archive/release/kinetic/jackal_navigation/0.6.1-0.tar.gz;
    sha256 = "4253f00535930e79559c60ff4f07918a03dd853792ab29c03747d9595865b02b";
  };

  propagatedBuildInputs = [ gmapping map-server urdf amcl xacro move-base ];
  nativeBuildInputs = [ roslaunch catkin ];

  meta = {
    description = ''Launch files and code for autonomous navigation of the Jackal'';
    #license = lib.licenses.BSD;
  };
}
