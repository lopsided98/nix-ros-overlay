
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, eigen, kdl-parser, nlopt, pkg-config, roscpp, urdf }:
buildRosPackage {
  pname = "ros-noetic-trac-ik-lib";
  version = "1.6.7-r1";

  src = fetchurl {
    url = "https://github.com/traclabs/trac_ik-release/archive/release/noetic/trac_ik_lib/1.6.7-1.tar.gz";
    name = "1.6.7-1.tar.gz";
    sha256 = "7bc7d681b9c970be2b80f80350bdf16f67a7be0934b8fc417cc0afa6325a0f1c";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules eigen pkg-config ];
  propagatedBuildInputs = [ boost kdl-parser nlopt roscpp urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "TRAC-IK is a faster, significantly more reliable drop-in replacement for
    KDL's pseudoinverse Jacobian solver.

    The TRAC-IK library has a very similar API to KDL's IK solver calls,
    except that the user passes a maximum time instead of a maximum number of
    search iterations.  Additionally, TRAC-IK allows for error tolerances to
    be set independently for each Cartesian dimension (x,y,z,roll,pitch.yaw).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
