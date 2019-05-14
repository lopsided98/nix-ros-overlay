
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, nav-core-adapter, amcl, base-local-planner, catkin, mir-dwb-critics, dwb-critics, dwb-plugins, sbpl-lattice-planner, move-base, mir-driver, roslaunch, dwb-local-planner }:
buildRosPackage {
  pname = "ros-lunar-mir-navigation";
  version = "1.0.4-r1";

  src = fetchurl {
    url = https://github.com/uos-gbp/mir_robot-release/archive/release/lunar/mir_navigation/1.0.4-1.tar.gz;
    sha256 = "58d359cf9351493e7cc4f4dd6dc34627cdf5ca83de015f7bf17f518ab2b6b8d5";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ map-server nav-core-adapter amcl base-local-planner mir-dwb-critics dwb-critics dwb-plugins sbpl-lattice-planner move-base mir-driver dwb-local-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and configuration files for move_base, localization etc. on the MiR robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
