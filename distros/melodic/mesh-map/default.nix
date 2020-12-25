
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, mesh-client, mesh-msgs-conversions, pluginlib, roscpp, tf2-ros, visualization-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-mesh-map";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/mesh_map/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "ef9afe218b24b4f6bb269328d4c71cd71b246c2a55476ec5cb4347407ade57c5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs mesh-client mesh-msgs-conversions pluginlib roscpp tf2-ros visualization-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_map package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
