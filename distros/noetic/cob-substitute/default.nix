
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-docker-control, cob-reflector-referencing, cob-safety-controller }:
buildRosPackage {
  pname = "ros-noetic-cob-substitute";
  version = "0.6.13-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_substitute-release/archive/release/noetic/cob_substitute/0.6.13-1.tar.gz";
    name = "0.6.13-1.tar.gz";
    sha256 = "1d645b331e16db66ce80eb2e57024373b525ab8bc306342bae70d9f162778279";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-docker-control cob-reflector-referencing cob-safety-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "cob_substitute";
    license = with lib.licenses; [ asl20 ];
  };
}
