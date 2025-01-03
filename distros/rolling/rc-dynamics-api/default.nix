
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, protobuf }:
buildRosPackage {
  pname = "ros-rolling-rc-dynamics-api";
  version = "0.10.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_dynamics_api-release/archive/release/rolling/rc_dynamics_api/0.10.5-1.tar.gz";
    name = "0.10.5-1.tar.gz";
    sha256 = "0e77c562601a0a92146f43f5141daf3faf0b9c6236d10a739fea9be3be88035b";
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
