
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, protobuf, cmake, curl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-rc-dynamics-api";
  version = "0.8.0-r1";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_dynamics_api-release/archive/release/kinetic/rc_dynamics_api/0.8.0-1.tar.gz;
    sha256 = "69f8eadcfbe28408bf25553c29c0d66ea230708536dfe1afabc39eb883de7d42";
  };

  buildInputs = [ protobuf curl ];
  propagatedBuildInputs = [ protobuf catkin curl ];
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
