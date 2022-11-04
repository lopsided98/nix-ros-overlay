
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, mesh-client, mesh-msgs-conversions, pluginlib, roscpp, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-mesh-map";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/mesh_map/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "ced769075211598fadf2945220bde45d0e8121a8f3e8e0517e3339e50204a697";
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
