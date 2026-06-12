
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, boost, eigen, geometry-msgs, interactive-markers, pluginlib, rclcpp, rviz-common, rviz-default-plugins, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-agni-tf-tools";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agni_tf_tools-release/archive/release/rolling/agni_tf_tools/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "2124c45dffb325df6aedfe994538283be214655670263fc359e73588bcb88715";
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
