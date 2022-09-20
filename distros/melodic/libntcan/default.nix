
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dpkg }:
buildRosPackage {
  pname = "ros-melodic-libntcan";
  version = "0.6.17-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/melodic/libntcan/0.6.17-1.tar.gz";
    name = "0.6.17-1.tar.gz";
    sha256 = "a54efc92a7411aaef217c0af73fa61b85d5a516c021912c383094236703b3e33";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dpkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libntcan to use it as a ros dependency.'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
