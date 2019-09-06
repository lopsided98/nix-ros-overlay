
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ethercat-trigger-controllers, pr2-bringup, pr2-mannequin-mode, catkin, camera-calibration, pr2-controller-manager, image-view }:
buildRosPackage {
  pname = "ros-kinetic-pr2-bringup-tests";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_self_test-release/archive/release/kinetic/pr2_bringup_tests/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "fe60f794d6d5e1881b7738e06cbab7560c6cb163457be0e3312aea022e3a1745";
  };

  buildType = "catkin";
  buildInputs = [ ethercat-trigger-controllers pr2-bringup pr2-mannequin-mode camera-calibration pr2-controller-manager image-view ];
  propagatedBuildInputs = [ ethercat-trigger-controllers pr2-bringup pr2-mannequin-mode camera-calibration pr2-controller-manager image-view ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Complete functionality tests for PR2. Contains utilities designed to test and verify devices, mechanicals and sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
