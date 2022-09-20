
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rsync }:
buildRosPackage {
  pname = "ros-melodic-abseil-cpp";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/Eurecat/abseil_cpp-release/archive/release/melodic/abseil_cpp/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "828ee69c9a7e77d6b31d4cdf1b12e02960ec26f2a79571bf25d4f7f060177b4f";
  };

  buildType = "catkin";
  buildInputs = [ catkin rsync ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The abseil_cpp package'';
    license = with lib.licenses; [ "Apache" ];
  };
}
