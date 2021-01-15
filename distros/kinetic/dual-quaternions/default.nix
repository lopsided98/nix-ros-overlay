
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pyquaternion }:
buildRosPackage {
  pname = "ros-kinetic-dual-quaternions";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/Achllle/dual_quaternions-release/archive/release/kinetic/dual_quaternions/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "392aaa2d3efbedc9d378f0ef673db93fb0a8f4fe83448ed933b9623574e5ccf6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pyquaternion ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''dual quaternion operations'';
    license = with lib.licenses; [ mit ];
  };
}
