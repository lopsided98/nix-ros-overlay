
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, pythonPackages, roslib, rospy, rostest, rosunit, std-msgs, tf, uuv-assistants, uuv-control-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-trajectory-control";
  version = "0.6.13";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uuvsimulator";
        repo = "uuv_simulator-release";
        rev = "release/melodic/uuv_trajectory_control/0.6.13-0";
        sha256 = "sha256-HZBLqmMi9pO1ssJS796RRJMvtTxvsjkIcvEBogue9Uc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs pythonPackages.matplotlib pythonPackages.numpy pythonPackages.pyyaml pythonPackages.scipy roslib rospy std-msgs tf uuv-assistants uuv-control-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_trajectory_control package'';
    license = with lib.licenses; [ asl20 ];
  };
}
