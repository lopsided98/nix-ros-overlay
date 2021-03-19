
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, eigen, kdl-parser, nlopt, pkg-config, roscpp, urdf }:
buildRosPackage {
  pname = "ros-noetic-trac-ik-lib";
  version = "1.6.1-r6";

  src = fetchurl {
    url = "https://github.com/traclabs/trac_ik-release/archive/release/noetic/trac_ik_lib/1.6.1-6.tar.gz";
    name = "1.6.1-6.tar.gz";
    sha256 = "1e3cf96735799225f4674ccd134181aa284168b7520c4a620c458e6027b1d1e7";
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
