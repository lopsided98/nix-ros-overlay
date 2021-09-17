
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch-xml, rmf-building-map-tools, rmf-demos-assets, rmf-demos-maps, rmf-demos-panel, rmf-demos-tasks, rmf-fleet-adapter, rmf-task-ros2, rmf-traffic-ros2, rmf-visualization, rviz2 }:
buildRosPackage {
  pname = "ros-foxy-rmf-demos";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/foxy/rmf_demos/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "457d92c4e2dbfb1ea982d7275e67778c406b5dbf305f7e277014fc3d6b4774ac";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ launch-xml rmf-building-map-tools rmf-demos-assets rmf-demos-maps rmf-demos-panel rmf-demos-tasks rmf-fleet-adapter rmf-task-ros2 rmf-traffic-ros2 rmf-visualization rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common launch files for RMF demos'';
    license = with lib.licenses; [ asl20 ];
  };
}
