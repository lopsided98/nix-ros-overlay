
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libntcan, libpcan }:
buildRosPackage {
  pname = "ros-kinetic-schunk-libm5api";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/ipa320/schunk_modular_robotics-release/archive/release/kinetic/schunk_libm5api/0.6.12-0.tar.gz;
    sha256 = "79f620ee8a0222e25676bfc02356067ee4d279a37d88c28096ead42a7dad30e9";
  };

  buildInputs = [ libntcan libpcan ];
  propagatedBuildInputs = [ libntcan libpcan ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libm5api to use it as a ros dependency. Original sources from http://www.schunk-modular-robotics.com/fileadmin/user_upload/software/schunk_libm5api_source.zip.'';
    #license = lib.licenses.Apache 2.0;
  };
}
