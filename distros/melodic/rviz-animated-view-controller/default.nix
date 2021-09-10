
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, cv-bridge, eigen, geometry-msgs, image-transport, libGL, libGLU, pluginlib, qt5, rviz, std-msgs, view-controller-msgs }:
buildRosPackage {
  pname = "ros-melodic-rviz-animated-view-controller";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rviz_animated_view_controller-release/archive/release/melodic/rviz_animated_view_controller/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "2528e6708151c41f229ca409f625c143ad8ee2db43fc65ba12e4216df54e0a59";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules cv-bridge eigen geometry-msgs image-transport libGL libGLU pluginlib qt5.qtbase rviz std-msgs view-controller-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A rviz view controller featuring smooth transitions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
