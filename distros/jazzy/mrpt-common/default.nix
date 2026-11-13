
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-common";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_common/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "99b5e98f6a07b5b7c71b3f465352dc49eaab8e8854a6d78f3469c91ca975c849";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Common CMake scripts to all MRPT modules";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
