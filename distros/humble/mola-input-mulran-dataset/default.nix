
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-mola-input-mulran-dataset";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_input_mulran_dataset/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "efe71b17c91d568eb2907d6848b55c6d1f1d4fdfc0977033401fc4cc2fa7b59f";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Offline RawDataSource from MulRan datasets'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
