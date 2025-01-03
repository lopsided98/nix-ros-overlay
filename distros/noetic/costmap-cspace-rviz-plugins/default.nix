
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace-msgs, qt5, roscpp, roslint, rviz }:
buildRosPackage {
  pname = "ros-noetic-costmap-cspace-rviz-plugins";
  version = "0.17.1-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_rviz_plugins-release/archive/release/noetic/costmap_cspace_rviz_plugins/0.17.1-1.tar.gz";
    name = "0.17.1-1.tar.gz";
    sha256 = "84e5bfd261f594a313fdb345f6961f454dac21dfbe11e93267037d66b10b4d0d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ costmap-cspace-msgs qt5.qtbase roscpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Rviz plugins for costmap_cspace_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
