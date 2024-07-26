
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rmf-building-map-tools, rmf-fleet-msgs, rmf-site-map-msgs, rmf-traffic-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-demos-bridges";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/rolling/rmf_demos_bridges/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "b9645c243252cc9ca318ddfebdbf058643ccc5ce863de0ed2d90be91705dc76a";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.flask-socketio python3Packages.paho-mqtt python3Packages.pyproj python3Packages.pyyaml rmf-building-map-tools rmf-fleet-msgs rmf-site-map-msgs rmf-traffic-msgs ];

  meta = {
    description = "Nodes for bridging between different communication stacks";
    license = with lib.licenses; [ asl20 ];
  };
}
