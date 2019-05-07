
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, nav-core-adapter, amcl, base-local-planner, catkin, mir-dwb-critics, dwb-critics, dwb-plugins, sbpl-lattice-planner, move-base, mir-driver, roslaunch, dwb-local-planner }:
buildRosPackage {
  pname = "ros-kinetic-mir-navigation";
  version = "1.0.4-r1";

  src = fetchurl {
    url = https://github.com/uos-gbp/mir_robot-release/archive/release/kinetic/mir_navigation/1.0.4-1.tar.gz;
    sha256 = "5c9dc0cc272ba6e26ef3bb3704453d1ec9e9e98c6ec3f05346aefa9264f6ba0c";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ map-server nav-core-adapter amcl base-local-planner mir-dwb-critics dwb-critics dwb-plugins sbpl-lattice-planner move-base mir-driver dwb-local-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and configuration files for move_base, localization etc. on the MiR robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
