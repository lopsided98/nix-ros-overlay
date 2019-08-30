
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, linuxHeaders, catkin }:
buildRosPackage {
  pname = "ros-kinetic-libpcan";
  version = "0.6.13-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_extern-release/archive/release/kinetic/libpcan/0.6.13-1.tar.gz;
    sha256 = "64cd98e7f3cc4e44bd03ef69e9255006c760151e1cd005fcb7d683c8c1180c10";
  };

  buildInputs = [ linuxHeaders ];
  propagatedBuildInputs = [ linuxHeaders ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libpcan to use it as a ros dependency'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
