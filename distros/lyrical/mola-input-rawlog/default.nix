
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-obs }:
buildRosPackage {
  pname = "ros-lyrical-mola-input-rawlog";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/lyrical/mola_input_rawlog/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "eb521051062d5fc061b6f10b572782290595ae21d6c6f090cc518db86d44e14b";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-kernel mrpt-obs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from MRPT rawlog datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
