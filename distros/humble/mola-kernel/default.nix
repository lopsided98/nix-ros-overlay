
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-yaml, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-mola-kernel";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_kernel/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "57108ad222bde0ca8e46bd734761892a08383bbd956d9862990fbf23c721b6b0";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-yaml mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Fundamental C++ virtual interfaces and data types for the rest of MOLA modules'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
