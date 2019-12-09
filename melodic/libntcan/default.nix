
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dpkg, catkin }:
buildRosPackage {
  pname = "ros-melodic-libntcan";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/melodic/libntcan/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "e63d1f84157dca1b139c3a8746f4712b02b869b207f04bf7be7500bb9779058c";
  };

  buildType = "catkin";
  buildInputs = [ dpkg ];
  propagatedBuildInputs = [ dpkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libntcan to use it as a ros dependency.'';
    license = with lib.licenses; [ "proprietary" ];
  };
}
