
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-pyquaternion";
  version = "0.9.6-r1";

  src = fetchurl {
    url = "https://github.com/Achllle/pyquaternion-release/archive/release/melodic/pyquaternion/0.9.6-1.tar.gz";
    name = "0.9.6-1.tar.gz";
    sha256 = "951aa79d9675b3a3bcd33c6554bb52ebfd0364ab26765a5607b5f4802c3a4185";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pythonPackages.numpy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''quaternion operations'';
    license = with lib.licenses; [ mit ];
  };
}
