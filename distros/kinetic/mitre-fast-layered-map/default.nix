
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, filters, geometry-msgs, grid-map-core, grid-map-loader, grid-map-msgs, grid-map-ros, grid-map-rviz-plugin, grid-map-visualization, pcl, pcl-conversions, pcl-ros, pluginlib, roscpp, rosunit, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-kdl, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mitre-fast-layered-map";
  version = "0.1.4-r2";

  src = fetchurl {
    url = "https://github.com/mitre/mitre_fast_layered_map-release/archive/release/kinetic/mitre_fast_layered_map/0.1.4-2.tar.gz";
    name = "0.1.4-2.tar.gz";
    sha256 = "79b647f6ac3ffd1de812465fafd04893d96aad8af4cc108f571dbed96e2acb0d";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ cv-bridge filters geometry-msgs grid-map-core grid-map-loader grid-map-msgs grid-map-ros grid-map-rviz-plugin grid-map-visualization pcl pcl-conversions pcl-ros pluginlib roscpp sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-kdl tf2-ros tf2-sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mitre_fast_layered_map package'';
    license = with lib.licenses; [ asl20 ];
  };
}
