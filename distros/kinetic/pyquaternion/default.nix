
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-pyquaternion";
  version = "0.9.6-r4";

  src = fetchurl {
    url = "https://github.com/Achllle/pyquaternion-release/archive/release/kinetic/pyquaternion/0.9.6-4.tar.gz";
    name = "0.9.6-4.tar.gz";
    sha256 = "a7403ccdc0e3b902817dc17aebac4becfdb46cd79348d42dfb5ccdd8aebce4be";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.numpy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''quaternion operations'';
    license = with lib.licenses; [ mit ];
  };
}
