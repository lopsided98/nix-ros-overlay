
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, rclpy, rmf-building-map-msgs, rmf-fleet-msgs, rmf-traffic-msgs, rmf-visualization-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-foxy-rmf-visualization-fleet-states";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/foxy/rmf_visualization_fleet_states/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "5ff35974d101145213bcb6757adaada49d7c2fc5830095940cbf0907ad09ddf5";
  };

  buildType = "ament_python";
  buildInputs = [ rmf-fleet-msgs ];
  propagatedBuildInputs = [ ament-index-python rclpy rmf-building-map-msgs rmf-traffic-msgs rmf-visualization-msgs std-msgs visualization-msgs ];

  meta = {
    description = ''Fleet state visualizer'';
    license = with lib.licenses; [ asl20 ];
  };
}
