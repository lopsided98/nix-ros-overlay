
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch-xml, rmf-building-map-tools, rmf-demos-assets, rmf-demos-fleet-adapter, rmf-demos-maps, rmf-demos-panel, rmf-demos-tasks, rmf-fleet-adapter, rmf-task-ros2, rmf-traffic-ros2, rmf-visualization, rviz2 }:
buildRosPackage {
  pname = "ros-humble-rmf-demos";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/humble/rmf_demos/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "e1098f6746707f1a9281e7ca686d75c71463716680d2c3ebf526367f205e52f3";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ launch-xml rmf-building-map-tools rmf-demos-assets rmf-demos-fleet-adapter rmf-demos-maps rmf-demos-panel rmf-demos-tasks rmf-fleet-adapter rmf-task-ros2 rmf-traffic-ros2 rmf-visualization rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common launch files for RMF demos'';
    license = with lib.licenses; [ asl20 ];
  };
}
