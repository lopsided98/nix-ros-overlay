
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pyquaternion }:
buildRosPackage {
  pname = "ros-noetic-dual-quaternions";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/Achllle/dual_quaternions-release/archive/release/noetic/dual_quaternions/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "41c7d1914282dd7c9d27656d1a93088f30cefa8c95ec698b08c7d1a431230c28";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pyquaternion ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''dual quaternion operations'';
    license = with lib.licenses; [ mit ];
  };
}
