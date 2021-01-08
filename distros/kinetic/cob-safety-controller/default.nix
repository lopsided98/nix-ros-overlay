
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-safety-controller";
  version = "0.6.10-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_substitute-release/archive/release/kinetic/cob_safety_controller/0.6.10-1.tar.gz";
    name = "0.6.10-1.tar.gz";
    sha256 = "6dba70c745e887b585634fca521cbb0d26fc4db02defa271b613f93b05b20a10";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a substitute for the private implementation of cob_safety_controller package'';
    license = with lib.licenses; [ asl20 ];
  };
}
