
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dpkg }:
buildRosPackage {
  pname = "ros-melodic-libntcan";
  version = "0.6.13-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_extern-release/archive/release/melodic/libntcan/0.6.13-1.tar.gz;
    sha256 = "05926b3ffb71536c9e4f39f1dc11b78eb933448468d4d1585504dbdb40ccef9b";
  };

  buildInputs = [ dpkg ];
  propagatedBuildInputs = [ dpkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libntcan to use it as a ros dependency.'';
    license = with lib.licenses; [ "proprietary" ];
  };
}
