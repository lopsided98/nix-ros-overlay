
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rmf-building-map-msgs, rmf-fleet-adapter, rmf-reservation-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-reservation-node";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/rolling/rmf_reservation_node/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "066c5e6e8f490851cfb2094233ea8ebcd4cbc6e9f43c28f653036fbf762c8fdf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rmf-building-map-msgs rmf-fleet-adapter rmf-reservation-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Node that handles current state of parking spots.";
    license = with lib.licenses; [ asl20 ];
  };
}
