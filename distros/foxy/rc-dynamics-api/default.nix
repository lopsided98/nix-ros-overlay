
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, protobuf }:
buildRosPackage {
  pname = "ros-foxy-rc-dynamics-api";
  version = "0.10.2-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_dynamics_api-release/archive/release/foxy/rc_dynamics_api/0.10.2-1.tar.gz";
    name = "0.10.2-1.tar.gz";
    sha256 = "dd99a64758059fa9e249f63f3532d620850826bc51ad2d674fcfa9409ea0040c";
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
