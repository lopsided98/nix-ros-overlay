
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-config, ecl-license, ecl-type-traits }:
buildRosPackage {
  pname = "ros-melodic-ecl-concepts";
  version = "0.62.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_concepts/0.62.2-0.tar.gz";
    name = "0.62.2-0.tar.gz";
    sha256 = "d34dac272c3aa77d62056445748c784c6a9acf8f4fc69945d6dd05be8dcc7815";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-config ecl-license ecl-type-traits ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Introduces a compile time concept checking mechanism that can be used
     most commonly to check for required functionality when passing
     template arguments.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
