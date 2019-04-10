
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin, ecl-errors, ecl-config }:
buildRosPackage {
  pname = "ros-lunar-ecl-sigslots-lite";
  version = "0.61.6";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_lite-release/archive/release/lunar/ecl_sigslots_lite/0.61.6-0.tar.gz;
    sha256 = "da287df89c544e6121ff760e76a72eef1d7ece79051a2d35ee1a0722d5ea6e0d";
  };

  buildInputs = [ ecl-license ecl-errors ecl-config ];
  propagatedBuildInputs = [ ecl-license ecl-errors ecl-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This avoids use of dynamic storage (malloc/new) and thread safety (mutexes) to
     provide a very simple sigslots implementation that can be used for *very*
     embedded development.'';
    #license = lib.licenses.BSD;
  };
}
