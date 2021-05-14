
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, base-local-planner, catkin, dwa-local-planner, dwb-critics, dwb-local-planner, dwb-plugins, hector-mapping, map-server, mir-driver, mir-dwb-critics, mir-gazebo, move-base, nav-core-adapter, python3Packages, roslaunch, sbpl-lattice-planner, teb-local-planner }:
buildRosPackage {
  pname = "ros-noetic-mir-navigation";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/noetic/mir_navigation/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "77c4a6ad42c5dd44b7f4493121e844421b37fcc3c7b122125cd0e68a4672dbfe";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ amcl base-local-planner dwa-local-planner dwb-critics dwb-local-planner dwb-plugins hector-mapping map-server mir-driver mir-dwb-critics mir-gazebo move-base nav-core-adapter python3Packages.matplotlib sbpl-lattice-planner teb-local-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and configuration files for move_base, localization etc. on the MiR robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
