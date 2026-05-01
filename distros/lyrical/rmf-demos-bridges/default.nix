
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rmf-building-map-tools, rmf-fleet-msgs, rmf-site-map-msgs, rmf-traffic-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rmf-demos-bridges";
  version = "2.8.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/lyrical/rmf_demos_bridges/2.8.2-4.tar.gz";
    name = "2.8.2-4.tar.gz";
    sha256 = "6cb6f880cf7049a368d00c6902006beca91c6451a35814df9ee12495bdba6688";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.flask-socketio python3Packages.paho-mqtt python3Packages.pyproj python3Packages.pyyaml rmf-building-map-tools rmf-fleet-msgs rmf-site-map-msgs rmf-traffic-msgs ];

  meta = {
    description = "Nodes for bridging between different communication stacks";
    license = with lib.licenses; [ asl20 ];
  };
}
