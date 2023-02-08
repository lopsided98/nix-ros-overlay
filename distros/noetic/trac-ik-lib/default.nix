
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, eigen, kdl-parser, nlopt, pkg-config, roscpp, urdf }:
buildRosPackage {
  pname = "ros-noetic-trac-ik-lib";
  version = "1.6.6-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "traclabs";
        repo = "trac_ik-release";
        rev = "release/noetic/trac_ik_lib/1.6.6-1";
        sha256 = "sha256-IpG2BG6MvK1xTe8DA+c1m62JnmWHmj8l9inLJOqHlEU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules eigen pkg-config ];
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
