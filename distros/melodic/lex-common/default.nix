
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, catkin, cmake, gtest, ros-environment }:
buildRosPackage {
  pname = "ros-melodic-lex-common";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/lex_common-release/archive/release/melodic/lex_common/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "c19408145479820b1c6aac9421d65161786b8e17b679ae4fd6db36a003d3ab52";
  };

  buildType = "cmake";
  buildInputs = [ catkin ros-environment ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ aws-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Lex Common utilities, intended for use by Lex clients'';
    license = with lib.licenses; [ asl20 ];
  };
}
