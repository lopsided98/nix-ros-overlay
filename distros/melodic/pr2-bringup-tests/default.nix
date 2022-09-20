
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration, catkin, ethercat-trigger-controllers, image-view, pr2-bringup, pr2-controller-manager, pr2-mannequin-mode }:
buildRosPackage {
  pname = "ros-melodic-pr2-bringup-tests";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_self_test-release/archive/release/melodic/pr2_bringup_tests/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "7f6580eba23820b9db17fc9cf6874215eeafbb29fa3604a7b1eeb1c0737a35f3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-calibration ethercat-trigger-controllers image-view pr2-bringup pr2-controller-manager pr2-mannequin-mode ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Complete functionality tests for PR2. Contains utilities designed to test and verify devices, mechanicals and sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
