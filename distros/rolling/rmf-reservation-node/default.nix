
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rmf-building-map-msgs, rmf-fleet-adapter, rmf-reservation-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-reservation-node";
  version = "2.12.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/rolling/rmf_reservation_node/2.12.0-2.tar.gz";
    name = "2.12.0-2.tar.gz";
    sha256 = "9e59be794f907eb68abc29c1a02a46d66028b50b235163ee9e6c3f1499aaa198";
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
