
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace-msgs, qt5, roscpp, roslint, rviz }:
buildRosPackage {
  pname = "ros-melodic-costmap-cspace-rviz-plugins";
  version = "0.11.7-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_rviz_plugins-release/archive/release/melodic/costmap_cspace_rviz_plugins/0.11.7-1.tar.gz";
    name = "0.11.7-1.tar.gz";
    sha256 = "71d6175db707daf9106b869a957398f1da44c549dbaa6ac3a8d734c7b2332991";
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
