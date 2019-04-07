
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, nav-core-adapter, amcl, base-local-planner, catkin, mir-dwb-critics, dwb-critics, dwb-plugins, sbpl-lattice-planner, move-base, mir-driver, roslaunch, dwb-local-planner }:
buildRosPackage {
  pname = "ros-melodic-mir-navigation";
  version = "1.0.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/mir_robot-release/archive/release/melodic/mir_navigation/1.0.3-0.tar.gz;
    sha256 = "dac30d2af0f96d6e417f116fecd33236e34a4fe32fa13b26ae4910801d807fcb";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ map-server nav-core-adapter amcl base-local-planner mir-dwb-critics dwb-critics dwb-plugins sbpl-lattice-planner move-base mir-driver dwb-local-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and configuration files for move_base, localization etc. on the MiR robot.'';
    #license = lib.licenses.BSD;
  };
}
