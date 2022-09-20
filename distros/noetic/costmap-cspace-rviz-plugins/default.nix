
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace-msgs, qt5, roscpp, roslint, rviz }:
buildRosPackage {
  pname = "ros-noetic-costmap-cspace-rviz-plugins";
  version = "0.11.6-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_rviz_plugins-release/archive/release/noetic/costmap_cspace_rviz_plugins/0.11.6-1.tar.gz";
    name = "0.11.6-1.tar.gz";
    sha256 = "6c2f6975ca322e23f1254669e5744fffdebe59cefbca478728e34cb73f4b2dce";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ costmap-cspace-msgs qt5.qtbase roscpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz plugins for costmap_cspace_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
