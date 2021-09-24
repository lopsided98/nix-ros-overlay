
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch-xml, rmf-building-map-tools, rmf-demos-assets, rmf-demos-maps, rmf-demos-panel, rmf-demos-tasks, rmf-fleet-adapter, rmf-task-ros2, rmf-traffic-ros2, rmf-visualization, rviz2 }:
buildRosPackage {
  pname = "ros-galactic-rmf-demos";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/galactic/rmf_demos/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "8814599919ad0c8aac723b5da1b6830485349f6ba7fc8d743800f99dbf797377";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ launch-xml rmf-building-map-tools rmf-demos-assets rmf-demos-maps rmf-demos-panel rmf-demos-tasks rmf-fleet-adapter rmf-task-ros2 rmf-traffic-ros2 rmf-visualization rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common launch files for RMF demos'';
    license = with lib.licenses; [ asl20 ];
  };
}
