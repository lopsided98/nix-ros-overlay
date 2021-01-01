
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, base-local-planner, catkin, dwb-critics, dwb-local-planner, dwb-plugins, hector-mapping, map-server, mir-driver, mir-dwb-critics, mir-gazebo, move-base, nav-core-adapter, pythonPackages, roslaunch, sbpl-lattice-planner }:
buildRosPackage {
  pname = "ros-kinetic-mir-navigation";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/kinetic/mir_navigation/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "940f7942f74f1cef7c82bdc5d27b46a6b7b890eaf8b83356e68b35310dc301a0";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ amcl base-local-planner dwb-critics dwb-local-planner dwb-plugins hector-mapping map-server mir-driver mir-dwb-critics mir-gazebo move-base nav-core-adapter pythonPackages.matplotlib sbpl-lattice-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and configuration files for move_base, localization etc. on the MiR robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
