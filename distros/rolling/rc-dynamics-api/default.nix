
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, protobuf }:
buildRosPackage {
  pname = "ros-rolling-rc-dynamics-api";
  version = "0.10.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_dynamics_api-release/archive/release/rolling/rc_dynamics_api/0.10.3-3.tar.gz";
    name = "0.10.3-3.tar.gz";
    sha256 = "f9870a4378fafd10fb4edf173aefc4c2c1e9fe53e6dc189ed4cb33978af3c0d1";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ curl protobuf ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The rc_dynamics_api provides an API for easy handling of the dynamic-state data
      streams provided by Roboception's stereo camera with self-localization.
      See http://rc-visard.com

      Dynamic-state estimates of the rc_visard relate to its self-localization and
      ego-motion estimation. These states refer to rc_visard's current pose,
      velocity, or acceleration and are published on demand via several data streams.
      For a complete list and descriptions of these dynamics states and the
      respective data streams please refer to rc_visard's user manual.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
