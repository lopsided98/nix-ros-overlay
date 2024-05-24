
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-jazzy-mola-input-euroc-dataset";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_input_euroc_dataset/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "54dc55ad159b1e5fcc4a440ae130c91f7e0cd3329d916451469df007ce280a6c";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from EUROC SLAM datasets";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
