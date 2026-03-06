
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rmf-building-map-msgs, rmf-fleet-adapter, rmf-reservation-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-reservation-node";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/rolling/rmf_reservation_node/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "a1a1447bae3c3b8dca4cac2502284e332ff392a465916ab8afdfc90eb32dccef";
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
