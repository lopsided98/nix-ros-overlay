
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-mola-input-paris-luco-dataset";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_input_paris_luco_dataset/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "a29be46eb85d06e1fee07bf7a0675fca14c42373ded626a57d663da07630c185";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Offline RawDataSource from Paris LUCO (CT-ICP) odometry/SLAM datasets'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
