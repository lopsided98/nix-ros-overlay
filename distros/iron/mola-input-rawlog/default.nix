
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-iron-mola-input-rawlog";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/iron/mola_input_rawlog/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "e8eb1a5993542a77850d61136793e6967d7f179da6fbea977a5aa4f782fd8350";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-kernel mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Offline RawDataSource from MRPT rawlog datasets'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
