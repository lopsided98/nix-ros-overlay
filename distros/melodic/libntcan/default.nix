
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dpkg }:
buildRosPackage {
  pname = "ros-melodic-libntcan";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/melodic/libntcan/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "c0ded6c692f2ad8240eedcdf1ba1fb36c53ff9ce0b43e79455127cd0a048170e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dpkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libntcan to use it as a ros dependency.'';
    license = with lib.licenses; [ "proprietary" ];
  };
}
