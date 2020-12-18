
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, mesh-client, mesh-msgs-conversions, pluginlib, roscpp, visualization-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-mesh-map";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/mesh_map/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "a4a654ddc609fb44f9b4ebc19ea5b931d16c29faba3bd883a15c1d46bc490bde";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs mesh-client mesh-msgs-conversions pluginlib roscpp visualization-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_map package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
