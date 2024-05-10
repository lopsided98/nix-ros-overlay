
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, builtin-interfaces, geometry-msgs, laser-geometry, message-filters, nav2-costmap-2d, openexr, openvdb-vendor, pcl, pcl-conversions, pluginlib, rclcpp, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-spatio-temporal-voxel-layer";
  version = "2.3.1-r2";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/spatio_temporal_voxel_layer-release/archive/release/humble/spatio_temporal_voxel_layer/2.3.1-2.tar.gz";
    name = "2.3.1-2.tar.gz";
    sha256 = "ce7babb16fc9a3ffced77a96528d22c7fef9dc73a3be0b5d3d674aee7e09cb72";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs laser-geometry message-filters nav2-costmap-2d openexr openvdb-vendor pcl pcl-conversions pluginlib rclcpp rosidl-default-runtime sensor-msgs std-msgs std-srvs tf2-geometry-msgs tf2-ros tf2-sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The spatio-temporal 3D obstacle costmap package";
    license = with lib.licenses; [ "LGPL-2.1-only" ];
  };
}
