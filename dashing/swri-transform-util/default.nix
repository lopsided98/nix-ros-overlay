
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, ament-cmake, tf2, sensor-msgs, diagnostic-msgs, rclcpp-components, gps-msgs, libyamlcpp, tf2-geometry-msgs, geographic-msgs, rclpy, rclcpp, geos, tf2-ros, proj, cv-bridge, pkg-config, ament-cmake-python, swri-roscpp, boost, swri-math-util, rcl-interfaces }:
buildRosPackage {
  pname = "ros-dashing-swri-transform-util";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_transform_util/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "ebf9275e970b3d61be4511bd15562fd2000d9f5a5d07e3d06d9e7b35a4ce3752";
  };

  buildType = "ament_cmake";
  buildInputs = [ boost geometry-msgs proj diagnostic-msgs rclcpp-components swri-math-util gps-msgs libyamlcpp tf2-geometry-msgs geographic-msgs rclpy rcl-interfaces cv-bridge tf2 rclcpp geos tf2-ros swri-roscpp ];
  propagatedBuildInputs = [ geometry-msgs tf2 sensor-msgs diagnostic-msgs rclcpp-components gps-msgs libyamlcpp tf2-geometry-msgs geographic-msgs rclpy rclcpp geos tf2-ros proj cv-bridge swri-roscpp boost swri-math-util rcl-interfaces ];
  nativeBuildInputs = [ pkg-config ament-cmake ament-cmake-python ];

  meta = {
    description = ''The swri_transform_util package contains utility functions and classes for
     transforming between coordinate frames.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
