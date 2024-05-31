
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen }:
buildRosPackage {
  pname = "ros-jazzy-sophus";
  version = "1.22.9100-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sophus-release/archive/release/jazzy/sophus/1.22.9100-2.tar.gz";
    name = "1.22.9100-2.tar.gz";
    sha256 = "222d9a3a1b143fc523db82a9d8bb70a5f738a30049bfce4b232f28c0bdaa1534";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ implementation of Lie Groups using Eigen.";
    license = with lib.licenses; [ mit ];
  };
}
