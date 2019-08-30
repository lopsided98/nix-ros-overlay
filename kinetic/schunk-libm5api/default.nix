
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libntcan, libpcan }:
buildRosPackage {
  pname = "ros-kinetic-schunk-libm5api";
  version = "0.6.13-r1";

  src = fetchurl {
    url = https://github.com/ipa320/schunk_modular_robotics-release/archive/release/kinetic/schunk_libm5api/0.6.13-1.tar.gz;
    sha256 = "c1353ab2b1db80d0665c26e7cbab26f4808ffed977112a2f85e755ab9dac536a";
  };

  buildInputs = [ libntcan libpcan ];
  propagatedBuildInputs = [ libntcan libpcan ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libm5api to use it as a ros dependency. Original sources from http://www.schunk-modular-robotics.com/fileadmin/user_upload/software/schunk_libm5api_source.zip.'';
    license = with lib.licenses; [ asl20 ];
  };
}
