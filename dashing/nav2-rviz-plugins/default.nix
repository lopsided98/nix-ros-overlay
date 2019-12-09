
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, pluginlib, ament-cmake, nav2-util, nav2-msgs, nav-msgs, ament-lint-auto, rclcpp-lifecycle, rviz-ogre-vendor, resource-retriever, ament-lint-common, tf2-geometry-msgs, qt5, rclcpp, rviz-rendering, std-msgs, nav2-lifecycle-manager, rviz-default-plugins, rviz-common }:
buildRosPackage {
  pname = "ros-dashing-nav2-rviz-plugins";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_rviz_plugins/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "39211ccfdf05e888216213a8456e13f2ff1e96163e85a1c8336858e42c444184";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-lifecycle geometry-msgs nav-msgs rviz-ogre-vendor resource-retriever pluginlib std-msgs nav2-lifecycle-manager rviz-default-plugins qt5.qtbase tf2-geometry-msgs rviz-common nav2-util rclcpp nav2-msgs rviz-rendering ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp-lifecycle geometry-msgs nav-msgs rviz-ogre-vendor resource-retriever pluginlib std-msgs nav2-lifecycle-manager qt5.qtbase rviz-default-plugins tf2-geometry-msgs rviz-common nav2-util rclcpp nav2-msgs rviz-rendering ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Navigation 2 plugins for rviz'';
    license = with lib.licenses; [ asl20 ];
  };
}
