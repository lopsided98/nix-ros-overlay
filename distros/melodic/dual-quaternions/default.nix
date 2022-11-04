
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pyquaternion }:
buildRosPackage {
  pname = "ros-melodic-dual-quaternions";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/Achllle/dual_quaternions-release/archive/release/melodic/dual_quaternions/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "7a453c19f652fa6d610a8ae72fc585e71458d7f382c0f7328a4c78b8e63eaadf";
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
