
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen }:
buildRosPackage {
  pname = "ros-melodic-sophus";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/sophus-release/archive/release/melodic/sophus/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "9e42bd34716ace8e9d2ac385a63bb85ce3c3eb6df98e1fa76d8b1dc14f6aade2";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ implementation of Lie Groups using Eigen.'';
    license = with lib.licenses; [ mit ];
  };
}
