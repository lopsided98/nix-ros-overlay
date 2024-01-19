
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen }:
buildRosPackage {
  pname = "ros-noetic-sophus";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/sophus-release/archive/release/noetic/sophus/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "ef6951ab8dbffc56d6898d916e5421f44195bc7dce4fe4982f26796d790c72c0";
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
