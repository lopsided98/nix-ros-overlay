
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, python3Packages, rospy, rostest, rqt-gui, rqt-gui-py, rqt-py-common, sensor-msgs, tf, tf2-msgs }:
buildRosPackage {
  pname = "ros-noetic-rqt-ez-publisher";
  version = "0.6.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "OTL";
        repo = "rqt_ez_publisher-release";
        rev = "release/noetic/rqt_ez_publisher/0.6.1-1";
        sha256 = "sha256-tbgrKNx4TSqsqSMM0pC2XeE0vr5TXzxs9cjdCY17FWk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.catkin-pkg rostest ];
  checkInputs = [ sensor-msgs ];
  propagatedBuildInputs = [ geometry-msgs rospy rqt-gui rqt-gui-py rqt-py-common tf tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rqt_ez_publisher package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
