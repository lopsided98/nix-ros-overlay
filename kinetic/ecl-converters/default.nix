
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-concepts, ecl-exceptions, ecl-license, ecl-errors, ecl-type-traits, ecl-config, ecl-mpl }:
buildRosPackage {
  pname = "ros-kinetic-ecl-converters";
  version = "0.61.17";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_converters/0.61.17-0.tar.gz;
    sha256 = "88b6bc078843e94363cd3888a84c16d38d0c5ac077b46fe714a8ae73da054e46";
  };

  buildInputs = [ ecl-exceptions ecl-license ecl-errors ecl-type-traits ecl-concepts ecl-config ecl-mpl ];
  propagatedBuildInputs = [ ecl-exceptions ecl-license ecl-errors ecl-type-traits ecl-concepts ecl-config ecl-mpl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Some fast/convenient type converters, mostly for char strings or strings.
     These are not really fully fleshed out, alot of them could use the addition for
     the whole range of fundamental types (e.g. all integers, not just int, unsigned int).
     
     They will come as the need arises.'';
    #license = lib.licenses.BSD;
  };
}
