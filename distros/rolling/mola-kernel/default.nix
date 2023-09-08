
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-yaml, mrpt2 }:
buildRosPackage {
  pname = "ros-rolling-mola-kernel";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_kernel/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "82cbe0a84e38fdafa22b3b94cb178c6cb27fc6fd7fde80284004b63406670c6e";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-yaml mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Fundamental C++ virtual interfaces and data types for the rest of MOLA modules'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
