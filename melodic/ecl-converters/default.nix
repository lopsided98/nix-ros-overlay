
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin, ecl-type-traits, ecl-errors, ecl-exceptions, ecl-concepts, ecl-mpl, ecl-config }:
buildRosPackage {
  pname = "ros-melodic-ecl-converters";
  version = "0.62.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_converters/0.62.2-0.tar.gz";
    name = "0.62.2-0.tar.gz";
    sha256 = "30286767e22011751173f3a7c3d063f26f675e6340cd56765e90853879058909";
  };

  buildType = "catkin";
  buildInputs = [ ecl-license ecl-type-traits ecl-errors ecl-exceptions ecl-concepts ecl-mpl ecl-config ];
  propagatedBuildInputs = [ ecl-license ecl-type-traits ecl-errors ecl-exceptions ecl-concepts ecl-mpl ecl-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Some fast/convenient type converters, mostly for char strings or strings.
     These are not really fully fleshed out, alot of them could use the addition for
     the whole range of fundamental types (e.g. all integers, not just int, unsigned int).
     
     They will come as the need arises.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
