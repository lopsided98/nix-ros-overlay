
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace-msgs, qt5, roscpp, roslint, rviz }:
buildRosPackage {
  pname = "ros-melodic-costmap-cspace-rviz-plugins";
  version = "0.11.6-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_rviz_plugins-release/archive/release/melodic/costmap_cspace_rviz_plugins/0.11.6-1.tar.gz";
    name = "0.11.6-1.tar.gz";
    sha256 = "bcd73822b9dd77d03b425ddad5918adea6d64ac3e9b7bbe8f4605ef9048af760";
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
