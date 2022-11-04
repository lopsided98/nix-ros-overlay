
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoconf, catkin, gfortran, git }:
buildRosPackage {
  pname = "ros-melodic-optpp-catkin";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/optpp_catkin-release/archive/release/melodic/optpp_catkin/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "b910ce830859bdd106d02f6cce840ffaa18ad3dd7cdf0e6b4f8d9da024137acf";
  };

  buildType = "catkin";
  buildInputs = [ autoconf catkin gfortran git ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The OPT++ catkin wrapper package'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
