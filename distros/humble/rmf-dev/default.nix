
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, menge-vendor, nlohmann-json-schema-validator-vendor, pybind11-json-vendor, rmf-api-msgs, rmf-battery, rmf-building-map-msgs, rmf-building-map-tools, rmf-building-sim-common, rmf-building-sim-gz-classic-plugins, rmf-building-sim-gz-plugins, rmf-charger-msgs, rmf-dispenser-msgs, rmf-door-msgs, rmf-fleet-adapter, rmf-fleet-adapter-python, rmf-fleet-msgs, rmf-ingestor-msgs, rmf-lift-msgs, rmf-obstacle-msgs, rmf-robot-sim-common, rmf-robot-sim-gz-classic-plugins, rmf-robot-sim-gz-plugins, rmf-scheduler-msgs, rmf-site-map-msgs, rmf-task, rmf-task-msgs, rmf-task-ros2, rmf-task-sequence, rmf-traffic, rmf-traffic-editor, rmf-traffic-editor-assets, rmf-traffic-editor-test-maps, rmf-traffic-examples, rmf-traffic-msgs, rmf-traffic-ros2, rmf-utils, rmf-visualization, rmf-visualization-building-systems, rmf-visualization-fleet-states, rmf-visualization-floorplans, rmf-visualization-msgs, rmf-visualization-navgraphs, rmf-visualization-obstacles, rmf-visualization-rviz2-plugins, rmf-visualization-schedule, rmf-websocket, rmf-workcell-msgs }:
buildRosPackage {
  pname = "ros-humble-rmf-dev";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_variants-release/archive/release/humble/rmf_dev/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "ad54e675e0d4d33f6e23ebead75baa7c2ee84af1955041bff88fdde529ad8c00";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-catch2 menge-vendor nlohmann-json-schema-validator-vendor pybind11-json-vendor rmf-api-msgs rmf-battery rmf-building-map-msgs rmf-building-map-tools rmf-building-sim-common rmf-building-sim-gz-classic-plugins rmf-building-sim-gz-plugins rmf-charger-msgs rmf-dispenser-msgs rmf-door-msgs rmf-fleet-adapter rmf-fleet-adapter-python rmf-fleet-msgs rmf-ingestor-msgs rmf-lift-msgs rmf-obstacle-msgs rmf-robot-sim-common rmf-robot-sim-gz-classic-plugins rmf-robot-sim-gz-plugins rmf-scheduler-msgs rmf-site-map-msgs rmf-task rmf-task-msgs rmf-task-ros2 rmf-task-sequence rmf-traffic rmf-traffic-editor rmf-traffic-editor-assets rmf-traffic-editor-test-maps rmf-traffic-examples rmf-traffic-msgs rmf-traffic-ros2 rmf-utils rmf-visualization rmf-visualization-building-systems rmf-visualization-fleet-states rmf-visualization-floorplans rmf-visualization-msgs rmf-visualization-navgraphs rmf-visualization-obstacles rmf-visualization-rviz2-plugins rmf-visualization-schedule rmf-websocket rmf-workcell-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package to aggregate the packages required for a minimal installation of Open-RMF'';
    license = with lib.licenses; [ asl20 ];
  };
}
