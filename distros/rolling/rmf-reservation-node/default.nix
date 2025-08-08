
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rmf-building-map-msgs, rmf-fleet-adapter, rmf-reservation-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-reservation-node";
  version = "2.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/rolling/rmf_reservation_node/2.11.1-1.tar.gz";
    name = "2.11.1-1.tar.gz";
    sha256 = "209dfcdc001e48c25003adb1a093dd65fe0e5112df418905294cc7c5f6172247";
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
