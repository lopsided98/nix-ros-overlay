
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, eigen, kdl-parser, nlopt, pkg-config, roscpp, urdf }:
buildRosPackage {
  pname = "ros-kinetic-trac-ik-lib";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/traclabs/trac_ik-release/archive/release/kinetic/trac_ik_lib/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "32594894ef5928f6e2b78db4a1c623677b50aea5b4d6319ccd4d51d2070478c6";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules eigen pkg-config ];
  propagatedBuildInputs = [ boost kdl-parser nlopt roscpp urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''TRAC-IK is a faster, significantly more reliable drop-in replacement for
    KDL's pseudoinverse Jacobian solver.

    The TRAC-IK library has a very similar API to KDL's IK solver calls,
    except that the user passes a maximum time instead of a maximum number of
    search iterations.  Additionally, TRAC-IK allows for error tolerances to
    be set independently for each Cartesian dimension (x,y,z,roll,pitch.yaw).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
