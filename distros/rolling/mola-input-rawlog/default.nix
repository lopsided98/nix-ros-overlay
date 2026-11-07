
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-obs }:
buildRosPackage {
  pname = "ros-rolling-mola-input-rawlog";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_input_rawlog/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "ba8a4d341a3d0a2f27d258f198cc6aa9b6a2a1f4c3d1a14fddad161aa3857acc";
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
