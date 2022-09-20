
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, base-local-planner, catkin, dwb-critics, dwb-local-planner, dwb-plugins, hector-mapping, map-server, mir-driver, mir-dwb-critics, mir-gazebo, move-base, nav-core-adapter, pythonPackages, roslaunch, sbpl-lattice-planner }:
buildRosPackage {
  pname = "ros-melodic-mir-navigation";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/melodic/mir_navigation/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "71f147dada6957cc290b35ee2852714e41e6a6e0ea6655fd172732ea256fe071";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ amcl base-local-planner dwb-critics dwb-local-planner dwb-plugins hector-mapping map-server mir-driver mir-dwb-critics mir-gazebo move-base nav-core-adapter pythonPackages.matplotlib sbpl-lattice-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and configuration files for move_base, localization etc. on the MiR robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
