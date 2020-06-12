
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pyquaternion }:
buildRosPackage {
  pname = "ros-melodic-dual-quaternions";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/Achllle/dual_quaternions-release/archive/release/melodic/dual_quaternions/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "a2fc145187a3905c744d9b10f294fa4c013bd2940c899b3b88fd79d8d2f92ab0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pyquaternion ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''dual quaternion operations'';
    license = with lib.licenses; [ mit ];
  };
}
