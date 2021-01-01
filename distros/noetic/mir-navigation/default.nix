
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, base-local-planner, catkin, dwb-critics, dwb-local-planner, dwb-plugins, map-server, mir-driver, mir-dwb-critics, mir-gazebo, move-base, nav-core-adapter, python3Packages, roslaunch, sbpl-lattice-planner }:
buildRosPackage {
  pname = "ros-noetic-mir-navigation";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/noetic/mir_navigation/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "0959034c2f702c0658895ab307b611e3d85b83bf7feadd878aa6d2673e03c87f";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ amcl base-local-planner dwb-critics dwb-local-planner dwb-plugins map-server mir-driver mir-dwb-critics mir-gazebo move-base nav-core-adapter python3Packages.matplotlib sbpl-lattice-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and configuration files for move_base, localization etc. on the MiR robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
