
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-jazzy-mola-input-mulran-dataset";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_input_mulran_dataset/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "5531c2c29d27ef58034e7c23eebc1888e47b6e1b312873228b96e1a975117f18";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from MulRan datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
