
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-cob-safety-controller";
  version = "0.6.8-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_substitute-release/archive/release/melodic/cob_safety_controller/0.6.8-1.tar.gz;
    sha256 = "fcb88a994fea2fef7b5606e83f114abf435b37e45919a8d18a684a267b6fa685";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a substitute for the private implementation of cob_safety_controller package'';
    license = with lib.licenses; [ asl20 ];
  };
}
