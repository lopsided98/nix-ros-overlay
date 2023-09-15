
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-mola-input-rawlog";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_input_rawlog/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "c299d9501ba0ac2c16c88b2be07b9e79b6b5fbe51a4092d10b8ac1fda2e72783";
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
