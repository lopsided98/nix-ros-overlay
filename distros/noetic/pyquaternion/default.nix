
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-pyquaternion";
  version = "0.9.6-r1";

  src = fetchurl {
    url = "https://github.com/Achllle/pyquaternion-release/archive/release/noetic/pyquaternion/0.9.6-1.tar.gz";
    name = "0.9.6-1.tar.gz";
    sha256 = "2e9df0ec02c91f4962b915bf34a8513e8f05556f8bc7d279bcc0e5d536c606a1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python3Packages.numpy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''quaternion operations'';
    license = with lib.licenses; [ mit ];
  };
}
