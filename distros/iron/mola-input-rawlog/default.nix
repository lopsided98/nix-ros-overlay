
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-iron-mola-input-rawlog";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/iron/mola_input_rawlog/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "19c897172e2206e88ec11def0ff343c702748bbde9ed57e5f1223df6f6493908";
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
