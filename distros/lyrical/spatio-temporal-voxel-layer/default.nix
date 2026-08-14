
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, builtin-interfaces, geometry-msgs, laser-geometry, message-filters, nav2-costmap-2d, nav2-ros-common, openexr, openvdb-vendor, pcl, pcl-conversions, pluginlib, point-cloud-transport, point-cloud-transport-plugins, rclcpp, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-spatio-temporal-voxel-layer";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/spatio_temporal_voxel_layer-release/archive/release/lyrical/spatio_temporal_voxel_layer/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "3b0919c6d278c409404b5341a950980ca7193ff32af6e5da0939dc3e48af7224";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs laser-geometry message-filters nav2-costmap-2d nav2-ros-common openexr openvdb-vendor pcl pcl-conversions pluginlib point-cloud-transport point-cloud-transport-plugins rclcpp rosidl-default-runtime sensor-msgs std-msgs std-srvs tf2-geometry-msgs tf2-ros tf2-sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The spatio-temporal 3D obstacle costmap package";
    license = with lib.licenses; [ "LGPL-2.1-only" ];
  };
}
