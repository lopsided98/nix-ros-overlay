
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rmf-building-map-tools, rmf-fleet-msgs, rmf-site-map-msgs, rmf-traffic-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-demos-bridges";
  version = "2.8.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/rolling/rmf_demos_bridges/2.8.2-3.tar.gz";
    name = "2.8.2-3.tar.gz";
    sha256 = "56949b8b23b8cc762f54fc60508beecb410c08b20580201fbb4180d6cab994f2";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.flask-socketio python3Packages.paho-mqtt python3Packages.pyproj python3Packages.pyyaml rmf-building-map-tools rmf-fleet-msgs rmf-site-map-msgs rmf-traffic-msgs ];

  meta = {
    description = "Nodes for bridging between different communication stacks";
    license = with lib.licenses; [ asl20 ];
  };
}
