
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, boost, eigen, geometry-msgs, interactive-markers, pluginlib, rclcpp, rviz-common, rviz-default-plugins, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-agni-tf-tools";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agni_tf_tools-release/archive/release/lyrical/agni_tf_tools/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "d6e87b77fe655ba12b24b31966f2430fc909b40654ff73cfb0a3054d185e5483";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  propagatedBuildInputs = [ angles boost geometry-msgs interactive-markers pluginlib rclcpp rviz-common rviz-default-plugins std-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides a gui program as well as a rviz plugin to publish static transforms.
  Both support the transformation between various Euler angle representations.
  The rviz plugin also allows to configure the transform with an interactive marker.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
