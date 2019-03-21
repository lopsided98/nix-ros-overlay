
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, nav-core-adapter, amcl, base-local-planner, catkin, mir-dwb-critics, dwb-critics, dwb-plugins, sbpl-lattice-planner, move-base, mir-driver, roslaunch, dwb-local-planner }:
buildRosPackage {
  pname = "ros-kinetic-mir-navigation";
  version = "1.0.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/mir_robot-release/archive/release/kinetic/mir_navigation/1.0.3-0.tar.gz;
    sha256 = "a67cee2331f8e371249a0ffcb6647b5d5c8f4d099d4d7d7c657483fe0467baa6";
  };

  propagatedBuildInputs = [ map-server nav-core-adapter amcl base-local-planner mir-dwb-critics dwb-critics dwb-plugins sbpl-lattice-planner move-base mir-driver dwb-local-planner ];
  nativeBuildInputs = [ roslaunch catkin ];

  meta = {
    description = ''Launch and configuration files for move_base, localization etc. on the MiR robot.'';
    #license = lib.licenses.BSD;
  };
}
