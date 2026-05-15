
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmaps }:
buildRosPackage {
  pname = "ros-lyrical-mola-input-paris-luco-dataset";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_academic_datasets-release/archive/release/lyrical/mola_input_paris_luco_dataset/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "865d50920ea85c677e65788a510fe91c092ae56e167e18f4e25a00dfb9c1ba2c";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt-libmaps ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from Paris LUCO (CT-ICP) odometry/SLAM datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
