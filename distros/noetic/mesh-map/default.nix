
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, mesh-client, mesh-msgs-conversions, pluginlib, roscpp, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-mesh-map";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/noetic/mesh_map/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "449d021b79a204f4b71da4eb3259d7a62d9f35d32ad38b0629c7eac9fbb2737e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs mesh-client mesh-msgs-conversions pluginlib roscpp tf2 tf2-geometry-msgs tf2-ros visualization-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_map package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
