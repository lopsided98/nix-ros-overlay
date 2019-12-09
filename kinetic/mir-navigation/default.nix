
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mir-dwb-critics, map-server, mir-driver, catkin, base-local-planner, dwb-local-planner, sbpl-lattice-planner, nav-core-adapter, move-base, amcl, dwb-critics, dwb-plugins, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-mir-navigation";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/kinetic/mir_navigation/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "5c9dc0cc272ba6e26ef3bb3704453d1ec9e9e98c6ec3f05346aefa9264f6ba0c";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ mir-dwb-critics map-server mir-driver base-local-planner dwb-local-planner sbpl-lattice-planner nav-core-adapter move-base amcl dwb-critics dwb-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and configuration files for move_base, localization etc. on the MiR robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
