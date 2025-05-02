
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, builtin-interfaces, geometry-msgs, laser-geometry, message-filters, nav2-costmap-2d, openexr, openvdb-vendor, pcl, pcl-conversions, pluginlib, rclcpp, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-spatio-temporal-voxel-layer";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/spatio_temporal_voxel_layer-release/archive/release/humble/spatio_temporal_voxel_layer/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "8a28d37e6863e1eddb6b0d293c25ee0e923a42e3a36d526861489ed55af70d70";
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
