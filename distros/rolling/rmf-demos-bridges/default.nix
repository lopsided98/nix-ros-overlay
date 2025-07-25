
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rmf-building-map-tools, rmf-fleet-msgs, rmf-site-map-msgs, rmf-traffic-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-demos-bridges";
  version = "2.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/rolling/rmf_demos_bridges/2.8.0-1.tar.gz";
    name = "2.8.0-1.tar.gz";
    sha256 = "a1ced5107228960d9e2b4dbb74c799abe328a17e16fdd5d8e4699cf92b9b327c";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.flask-socketio python3Packages.paho-mqtt python3Packages.pyproj python3Packages.pyyaml rmf-building-map-tools rmf-fleet-msgs rmf-site-map-msgs rmf-traffic-msgs ];

  meta = {
    description = "Nodes for bridging between different communication stacks";
    license = with lib.licenses; [ asl20 ];
  };
}
