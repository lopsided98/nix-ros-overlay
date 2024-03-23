
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-cob-supported-robots";
  version = "0.6.18-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_supported_robots-release/archive/release/noetic/cob_supported_robots/0.6.18-1.tar.gz";
    name = "0.6.18-1.tar.gz";
    sha256 = "1c761318b2f1c00a526a2907c1a6ee7739c4afd819f426b54cd109857c280615";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package contains the list of supported robots within the care-o-bot family.";
    license = with lib.licenses; [ asl20 ];
  };
}
