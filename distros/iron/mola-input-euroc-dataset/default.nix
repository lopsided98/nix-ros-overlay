
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-iron-mola-input-euroc-dataset";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/iron/mola_input_euroc_dataset/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "fd20de10f7d43c58ef8c0489d21720ce8d43db36eb2f3e820e0d914a4e0f72d7";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Offline RawDataSource from EUROC SLAM datasets'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
