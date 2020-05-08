
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, base-local-planner, catkin, dwb-critics, dwb-local-planner, dwb-plugins, hector-mapping, map-server, mir-driver, mir-dwb-critics, move-base, nav-core-adapter, roslaunch, sbpl-lattice-planner }:
buildRosPackage {
  pname = "ros-melodic-mir-navigation";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/melodic/mir_navigation/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "60a275e2ec18af8d30071139da1cc18923533cf11bb6daa20ee1e1c68e30ff4e";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ amcl base-local-planner dwb-critics dwb-local-planner dwb-plugins hector-mapping map-server mir-driver mir-dwb-critics move-base nav-core-adapter sbpl-lattice-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and configuration files for move_base, localization etc. on the MiR robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
