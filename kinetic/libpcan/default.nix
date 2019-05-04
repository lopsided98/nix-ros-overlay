
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, linuxHeaders, catkin }:
buildRosPackage {
  pname = "ros-kinetic-libpcan";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/ipa320/cob_extern-release/archive/release/kinetic/libpcan/0.6.12-0.tar.gz;
    sha256 = "c4f41404fcc3bb9bbeae205b04ad04e5c99b3d230f6dd52a7feb3dc3d75faaf4";
  };

  buildInputs = [ linuxHeaders ];
  propagatedBuildInputs = [ linuxHeaders ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libpcan to use it as a ros dependency'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
