
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, mesh-client, mesh-msgs-conversions, pluginlib, roscpp, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-mesh-map";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/noetic/mesh_map/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "3b6bc068a0bd78004896a044cbf855cea9431968fa1d83163e609f2517d1c55e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs mesh-client mesh-msgs-conversions pluginlib roscpp tf2 tf2-geometry-msgs tf2-ros visualization-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_map package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
