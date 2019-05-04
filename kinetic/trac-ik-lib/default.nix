
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-parser, cmake-modules, boost, catkin, nlopt, pkg-config, urdf, eigen, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-trac-ik-lib";
  version = "1.5.0";

  src = fetchurl {
    url = https://github.com/traclabs/trac_ik-release/archive/release/kinetic/trac_ik_lib/1.5.0-0.tar.gz;
    sha256 = "be44dfa0104300bb8de280bfef95840816777c43ccfaca197b237f4f2b0056d6";
  };

  buildInputs = [ kdl-parser cmake-modules boost pkg-config roscpp urdf eigen nlopt ];
  propagatedBuildInputs = [ kdl-parser boost nlopt urdf roscpp ];
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
