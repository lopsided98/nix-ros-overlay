
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, protobuf, cmake, curl, catkin }:
buildRosPackage {
  pname = "ros-lunar-rc-dynamics-api";
  version = "0.7.1";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_dynamics_api-release/archive/release/lunar/rc_dynamics_api/0.7.1-0.tar.gz;
    sha256 = "1f1a6241de2aed30c9a399ca342362f2fbf2607d6533dcde59e35350a0b13ba4";
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
    #license = lib.licenses.BSD;
  };
}
