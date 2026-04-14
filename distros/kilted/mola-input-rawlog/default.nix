
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-libobs }:
buildRosPackage {
  pname = "ros-kilted-mola-input-rawlog";
  version = "2.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_input_rawlog/2.6.1-1.tar.gz";
    name = "2.6.1-1.tar.gz";
    sha256 = "ccd5599abde2d8f5489b5c357654194268a51a7c12b04a7298a428b11d1ffd77";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-kernel mrpt-libobs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from MRPT rawlog datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
