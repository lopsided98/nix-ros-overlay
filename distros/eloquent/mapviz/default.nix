
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, freeglut, geometry-msgs, glew, image-transport, libyamlcpp, mapviz-interfaces, marti-common-msgs, pkg-config, pluginlib, qt5, rclcpp, rqt-gui, rqt-gui-cpp, std-srvs, swri-math-util, swri-transform-util, tf2, tf2-geometry-msgs, tf2-ros, xorg }:
buildRosPackage {
  pname = "ros-eloquent-mapviz";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/eloquent/mapviz/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "afe61c72615e44bd5a1274613a3931d18531955e161c16099cf3cc734ab545eb";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ cv-bridge freeglut geometry-msgs glew image-transport libyamlcpp mapviz-interfaces marti-common-msgs pluginlib qt5.qtbase rclcpp rqt-gui rqt-gui-cpp std-srvs swri-math-util swri-transform-util tf2 tf2-geometry-msgs tf2-ros xorg.libXi xorg.libXmu ];
  nativeBuildInputs = [ ament-cmake pkg-config qt5.qtbase ];

  meta = {
    description = ''mapviz'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
