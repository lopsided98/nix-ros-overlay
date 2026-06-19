
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rmf-building-map-msgs, rmf-fleet-adapter, rmf-reservation-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rmf-reservation-node";
  version = "2.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/lyrical/rmf_reservation_node/2.13.0-1.tar.gz";
    name = "2.13.0-1.tar.gz";
    sha256 = "f88dfe77210ff5cc3a0a97d8acd95f536a8f4c783268cf530d7f0c87e6d49f17";
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
