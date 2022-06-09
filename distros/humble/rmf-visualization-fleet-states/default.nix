
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, rclpy, rmf-building-map-msgs, rmf-fleet-msgs, rmf-traffic-msgs, rmf-visualization-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-rmf-visualization-fleet-states";
  version = "1.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/humble/rmf_visualization_fleet_states/1.2.1-3.tar.gz";
    name = "1.2.1-3.tar.gz";
    sha256 = "ecd3d1a273bcb3c9baea31d056cc36e85c6d5a2918c53fbdbfd3b7d0c1cf293f";
  };

  buildType = "ament_python";
  buildInputs = [ rmf-fleet-msgs ];
  propagatedBuildInputs = [ ament-index-python rclpy rmf-building-map-msgs rmf-traffic-msgs rmf-visualization-msgs std-msgs visualization-msgs ];

  meta = {
    description = ''Fleet state visualizer'';
    license = with lib.licenses; [ asl20 ];
  };
}
