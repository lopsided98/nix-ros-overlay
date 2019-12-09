
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-errors, ecl-license, ecl-config, catkin }:
buildRosPackage {
  pname = "ros-melodic-ecl-sigslots-lite";
  version = "0.61.6";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/melodic/ecl_sigslots_lite/0.61.6-0.tar.gz";
    name = "0.61.6-0.tar.gz";
    sha256 = "6f41052abdb5ac99e0e5d7e0675b2798d1cc570cebd16b303e035b00d66afe96";
  };

  buildType = "catkin";
  buildInputs = [ ecl-errors ecl-license ecl-config ];
  propagatedBuildInputs = [ ecl-errors ecl-license ecl-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This avoids use of dynamic storage (malloc/new) and thread safety (mutexes) to
     provide a very simple sigslots implementation that can be used for *very*
     embedded development.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
