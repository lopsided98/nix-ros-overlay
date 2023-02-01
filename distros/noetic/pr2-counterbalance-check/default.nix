
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, joint-qualification-controllers, pr2-controller-configuration, pr2-controller-manager, pr2-controllers-msgs, pr2-self-test-msgs, rospy, rostest, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-pr2-counterbalance-check";
  version = "1.0.15-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_self_test-release";
        rev = "release/noetic/pr2_counterbalance_check/1.0.15-1";
        sha256 = "sha256-e+XFN5xpI3IKnd+BOeAlFjON7OLQRSxE1lQyo45hap8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ actionlib joint-qualification-controllers pr2-controller-configuration pr2-controller-manager pr2-controllers-msgs pr2-self-test-msgs rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2_counterbalance_check'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
