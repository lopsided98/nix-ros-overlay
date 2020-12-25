
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, mesh-client, mesh-msgs-conversions, pluginlib, roscpp, tf2-ros, visualization-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-mesh-map";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/noetic/mesh_map/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "c43bb98dda3a9a7027f3fc29a081e5ac29e8072f95d9fc52593f0c9cb6625cca";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs mesh-client mesh-msgs-conversions pluginlib roscpp tf2-ros visualization-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_map package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
