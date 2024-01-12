
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-config, ecl-errors, ecl-license }:
buildRosPackage {
  pname = "ros-noetic-ecl-sigslots-lite";
  version = "0.61.6-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/noetic/ecl_sigslots_lite/0.61.6-1.tar.gz";
    name = "0.61.6-1.tar.gz";
    sha256 = "a39f77f28ffbde76c8d230b4c0b61261ed20b9c480220dd5c3db9a30cb472181";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-config ecl-errors ecl-license ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This avoids use of dynamic storage (malloc/new) and thread safety (mutexes) to
     provide a very simple sigslots implementation that can be used for *very*
     embedded development.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
