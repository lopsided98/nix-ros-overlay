
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, builtin-interfaces, geometry-msgs, laser-geometry, message-filters, nav2-costmap-2d, openexr, openvdb, pcl, pcl-conversions, pluginlib, rclcpp, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-galactic-spatio-temporal-voxel-layer";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/spatio_temporal_voxel_layer-release/archive/release/galactic/spatio_temporal_voxel_layer/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "9d43d3893b2471cc77a38dbb1e8c84d749b17259e8581c7a27c7d94e4457de73";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs laser-geometry message-filters nav2-costmap-2d openexr openvdb pcl pcl-conversions pluginlib rclcpp rosidl-default-runtime sensor-msgs std-msgs std-srvs tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The spatio-temporal 3D obstacle costmap package'';
    license = with lib.licenses; [ "LGPL-2.1-only" ];
  };
}
