
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-osqp-vendor";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/tier4/osqp_vendor-release/archive/release/noetic/osqp_vendor/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "dbba3723ab20efeabd65bcc1b3acad82dc8d71112a78c978af194aa50d1d6c16";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wrapper around osqp that ships with a CMake module'';
    license = with lib.licenses; [ asl20 ];
  };
}
