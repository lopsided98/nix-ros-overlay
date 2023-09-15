
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-mola-input-euroc-dataset";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_input_euroc_dataset/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "83ccb89ef6628f753f67be6e3b12496378ceccb09768662d8383d3a3060e9a66";
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
