
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-reflector-referencing, cob-safety-controller, catkin, cob-docker-control }:
buildRosPackage {
  pname = "ros-kinetic-cob-substitute";
  version = "0.6.7";

  src = fetchurl {
    url = https://github.com/ipa320/cob_substitute-release/archive/release/kinetic/cob_substitute/0.6.7-0.tar.gz;
    sha256 = "f85fabe45c25d76c832c7b1ad392d5371ffda2842ea57f6ec96e5273fe277eeb";
  };

  propagatedBuildInputs = [ cob-reflector-referencing cob-safety-controller cob-docker-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_substitute'';
    license = with lib.licenses; [ asl20 ];
  };
}
