
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pyquaternion }:
buildRosPackage {
  pname = "ros-noetic-dual-quaternions";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/Achllle/dual_quaternions-release/archive/release/noetic/dual_quaternions/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "63b1083575b5eff98c5defaa1906886fdf4182522a04e1c473adfddb81290c08";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pyquaternion ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''dual quaternion operations'';
    license = with lib.licenses; [ mit ];
  };
}
