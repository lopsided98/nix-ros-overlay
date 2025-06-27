
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, protobuf }:
buildRosPackage {
  pname = "ros-kilted-rc-dynamics-api";
  version = "0.10.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_dynamics_api-release/archive/release/kilted/rc_dynamics_api/0.10.5-2.tar.gz";
    name = "0.10.5-2.tar.gz";
    sha256 = "9f921211a728e4c42fbcab07e9ecbde6b6fe5cc0b5c19f14d2aa0d7dac721af4";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ curl protobuf ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The rc_dynamics_api provides an API for easy handling of the dynamic-state data
      streams provided by Roboception's stereo camera with self-localization.
      See http://rc-visard.com

      Dynamic-state estimates of the rc_visard relate to its self-localization and
      ego-motion estimation. These states refer to rc_visard's current pose,
      velocity, or acceleration and are published on demand via several data streams.
      For a complete list and descriptions of these dynamics states and the
      respective data streams please refer to rc_visard's user manual.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
