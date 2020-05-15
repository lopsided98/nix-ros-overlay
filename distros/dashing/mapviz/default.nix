
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, freeglut, geometry-msgs, glew, image-transport, libyamlcpp, mapviz-interfaces, marti-common-msgs, pkg-config, pluginlib, qt5, rclcpp, rqt-gui, rqt-gui-cpp, std-srvs, swri-math-util, swri-transform-util, tf2, tf2-geometry-msgs, tf2-ros, xorg }:
buildRosPackage {
  pname = "ros-dashing-mapviz";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/dashing/mapviz/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "70f8f895bd4a2ea3c7c7200a30a86168cfccf79e8b09b163e2bbd5c4f0107768";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ cv-bridge freeglut geometry-msgs glew image-transport libyamlcpp mapviz-interfaces marti-common-msgs pluginlib qt5.qtbase rclcpp rqt-gui rqt-gui-cpp std-srvs swri-math-util swri-transform-util tf2 tf2-geometry-msgs tf2-ros xorg.libXi xorg.libXmu ];
  nativeBuildInputs = [ ament-cmake pkg-config qt5.qtbase ];

  meta = {
    description = ''mapviz'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
