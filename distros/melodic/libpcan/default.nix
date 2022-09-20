
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-libpcan";
  version = "0.6.17-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/melodic/libpcan/0.6.17-1.tar.gz";
    name = "0.6.17-1.tar.gz";
    sha256 = "c7db1c327f04ef81ff88a50c4b55d73406a634f179509f2eb3bf5cf62203328a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libpcan to use it as a ros dependency'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
