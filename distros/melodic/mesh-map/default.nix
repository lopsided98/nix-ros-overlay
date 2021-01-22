
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, mesh-client, mesh-msgs-conversions, pluginlib, roscpp, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-mesh-map";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/mesh_map/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "6b8546ff1989bf3ba3e3b9f9e5e90e272c1e0071425a0477879d15f428c03156";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs mesh-client mesh-msgs-conversions pluginlib roscpp tf2 tf2-geometry-msgs tf2-ros visualization-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_map package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
