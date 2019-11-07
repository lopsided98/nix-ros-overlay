
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rviz-rendering, ament-cmake, rviz-default-plugins, nav2-lifecycle-manager, rviz-common, geometry-msgs, nav2-util, rclcpp, rclcpp-lifecycle, tf2-geometry-msgs, nav-msgs, resource-retriever, std-msgs, pluginlib, ament-lint-common, nav2-msgs, rviz-ogre-vendor, qt5, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-nav2-rviz-plugins";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_rviz_plugins/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "39211ccfdf05e888216213a8456e13f2ff1e96163e85a1c8336858e42c444184";
  };

  buildType = "ament_cmake";
  buildInputs = [ rviz-rendering pluginlib tf2-geometry-msgs rclcpp-lifecycle rviz-default-plugins geometry-msgs nav2-msgs nav2-util qt5.qtbase rviz-ogre-vendor nav-msgs rclcpp nav2-lifecycle-manager resource-retriever std-msgs rviz-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rviz-rendering rclcpp-lifecycle tf2-geometry-msgs rviz-default-plugins pluginlib geometry-msgs nav2-msgs nav2-util qt5.qtbase rviz-ogre-vendor nav-msgs resource-retriever nav2-lifecycle-manager rclcpp std-msgs rviz-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Navigation 2 plugins for rviz'';
    license = with lib.licenses; [ asl20 ];
  };
}
