
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pythonPackages, rospy, rostest, rqt-gui, rqt-gui-py, rqt-py-common, sensor-msgs, tf, tf2-msgs }:
buildRosPackage {
  pname = "ros-melodic-rqt-ez-publisher";
  version = "0.5.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "OTL";
        repo = "rqt_ez_publisher-release";
        rev = "release/melodic/rqt_ez_publisher/0.5.0-1";
        sha256 = "sha256-3z+SiisueQ5IEJ+ztpeUtEbKTKDzupqxTLpIBgEgHmw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.catkin-pkg rostest ];
  checkInputs = [ sensor-msgs ];
  propagatedBuildInputs = [ geometry-msgs rospy rqt-gui rqt-gui-py rqt-py-common tf tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rqt_ez_publisher package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
