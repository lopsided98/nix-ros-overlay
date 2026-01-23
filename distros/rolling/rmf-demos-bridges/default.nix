
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rmf-building-map-tools, rmf-fleet-msgs, rmf-site-map-msgs, rmf-traffic-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-demos-bridges";
  version = "2.8.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/rolling/rmf_demos_bridges/2.8.1-2.tar.gz";
    name = "2.8.1-2.tar.gz";
    sha256 = "1952ab3e47606fccb3d2a16503c890b27d2fa684d8ebdd31aacc0454d9d840aa";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.flask-socketio python3Packages.paho-mqtt python3Packages.pyproj python3Packages.pyyaml rmf-building-map-tools rmf-fleet-msgs rmf-site-map-msgs rmf-traffic-msgs ];

  meta = {
    description = "Nodes for bridging between different communication stacks";
    license = with lib.licenses; [ asl20 ];
  };
}
