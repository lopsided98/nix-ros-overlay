
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ethercat-trigger-controllers, pr2-bringup, pr2-mannequin-mode, catkin, camera-calibration, pr2-controller-manager, image-view }:
buildRosPackage {
  pname = "ros-kinetic-pr2-bringup-tests";
  version = "1.0.14";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_self_test-release/archive/release/kinetic/pr2_bringup_tests/1.0.14-0.tar.gz;
    sha256 = "2cb9ece01d520d2496028fbc37d3cff41734d9f6bfe53435cbea705459723e4c";
  };

  propagatedBuildInputs = [ ethercat-trigger-controllers pr2-controller-manager image-view pr2-bringup pr2-mannequin-mode camera-calibration ];
  nativeBuildInputs = [ ethercat-trigger-controllers pr2-controller-manager image-view pr2-bringup pr2-mannequin-mode catkin camera-calibration ];

  meta = {
    description = ''Complete functionality tests for PR2. Contains utilities designed to test and verify devices, mechanicals and sensors.'';
    #license = lib.licenses.BSD;
  };
}
