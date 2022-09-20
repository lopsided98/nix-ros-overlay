
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, catkin, cmake, gtest, ros-environment }:
buildRosPackage {
  pname = "ros-melodic-lex-common";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/lex_common-release/archive/release/melodic/lex_common/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "69a222e4226dfcaf24a2a5c923b70f37b411c95a51ae870b97a6734178cd8536";
  };

  buildType = "cmake";
  buildInputs = [ catkin cmake ros-environment ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ aws-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Lex Common utilities, intended for use by Lex clients'';
    license = with lib.licenses; [ asl20 ];
  };
}
