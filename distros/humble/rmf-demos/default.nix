
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch-xml, rmf-building-map-tools, rmf-demos-assets, rmf-demos-maps, rmf-demos-panel, rmf-demos-tasks, rmf-fleet-adapter, rmf-task-ros2, rmf-traffic-ros2, rmf-visualization, rviz2 }:
buildRosPackage {
  pname = "ros-humble-rmf-demos";
  version = "1.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/humble/rmf_demos/1.3.1-3.tar.gz";
    name = "1.3.1-3.tar.gz";
    sha256 = "9700bb49b29f19a496b7ed767de74f24946c2e6e763977557c39b76faf9292c6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ launch-xml rmf-building-map-tools rmf-demos-assets rmf-demos-maps rmf-demos-panel rmf-demos-tasks rmf-fleet-adapter rmf-task-ros2 rmf-traffic-ros2 rmf-visualization rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common launch files for RMF demos'';
    license = with lib.licenses; [ asl20 ];
  };
}
