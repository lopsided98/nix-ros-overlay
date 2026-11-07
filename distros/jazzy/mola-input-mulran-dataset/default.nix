
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mola-common, mola-kernel, mrpt-maps, mrpt-math, mrpt-poses }:
buildRosPackage {
  pname = "ros-jazzy-mola-input-mulran-dataset";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_academic_datasets-release/archive/release/jazzy/mola_input_mulran_dataset/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "78753d9d3e62a9766a09c827ff078b89738e1a939a68a071714232a26c916f2c";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt-maps mrpt-math mrpt-poses ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from MulRan datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
