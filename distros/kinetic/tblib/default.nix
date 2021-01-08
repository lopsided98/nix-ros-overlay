
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-pip }:
buildRosPackage {
  pname = "ros-kinetic-tblib";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/asmodehn/tblib-rosrelease/archive/release/kinetic/tblib/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "0e67c67bba4e7339bda61ef3f8ada290a0374da8b8e46670215bc41080f179c1";
  };

  buildType = "catkin";
  buildInputs = [ catkin-pip ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Traceback fiddling library. Allows you to pickle tracebacks.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
