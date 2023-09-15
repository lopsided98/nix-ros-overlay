
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-iron-mola-input-euroc-dataset";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/iron/mola_input_euroc_dataset/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "4b53745bf09c561d8428fc8ce2fc12226599943beb7bf92a9972963020286288";
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
