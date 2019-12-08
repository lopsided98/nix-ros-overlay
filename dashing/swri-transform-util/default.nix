
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, diagnostic-msgs, geos, geometry-msgs, boost, pkg-config, gps-msgs, rclcpp, ament-cmake-python, swri-math-util, tf2-geometry-msgs, tf2-ros, proj, rcl-interfaces, rclpy, libyamlcpp, sensor-msgs, geographic-msgs, swri-roscpp, tf2, rclcpp-components }:
buildRosPackage {
  pname = "ros-dashing-swri-transform-util";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_transform_util/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "ebf9275e970b3d61be4511bd15562fd2000d9f5a5d07e3d06d9e7b35a4ce3752";
  };

  buildType = "ament_cmake";
  buildInputs = [ swri-math-util boost tf2-geometry-msgs rclpy libyamlcpp cv-bridge tf2-ros geographic-msgs proj swri-roscpp tf2 gps-msgs rclcpp rcl-interfaces diagnostic-msgs geos rclcpp-components geometry-msgs ];
  propagatedBuildInputs = [ cv-bridge diagnostic-msgs geos geometry-msgs boost gps-msgs rclcpp swri-math-util tf2-geometry-msgs tf2-ros proj rcl-interfaces rclpy libyamlcpp sensor-msgs geographic-msgs swri-roscpp tf2 rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake pkg-config ];

  meta = {
    description = ''The swri_transform_util package contains utility functions and classes for
     transforming between coordinate frames.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
