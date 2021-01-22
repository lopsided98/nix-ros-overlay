
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, catkin, cmake, gmock, gtest, ros-environment }:
buildRosPackage {
  pname = "ros-kinetic-lex-common";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/lex_common-release/archive/release/kinetic/lex_common/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "afd3f0b8889ad9a2fec64e0426ab0554ae62ec634ca0fbfe5275ce4ef654f265";
  };

  buildType = "cmake";
  buildInputs = [ catkin ros-environment ];
  checkInputs = [ gmock gtest ];
  propagatedBuildInputs = [ aws-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Lex Common utilities, intended for use by Lex clients'';
    license = with lib.licenses; [ asl20 ];
  };
}
