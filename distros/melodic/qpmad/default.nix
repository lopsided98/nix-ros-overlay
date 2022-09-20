
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen }:
buildRosPackage {
  pname = "ros-melodic-qpmad";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/asherikov/qpmad-release/archive/release/melodic/qpmad/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "1be4d73c57ea15ec2c65241d783e2f93f881083138da4b1982e9a6c730743683";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''qpmad QP solver'';
    license = with lib.licenses; [ asl20 ];
  };
}
