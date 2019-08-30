
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libntcan, libpcan }:
buildRosPackage {
  pname = "ros-melodic-schunk-libm5api";
  version = "0.6.13-r2";

  src = fetchurl {
    url = https://github.com/ipa320/schunk_modular_robotics-release/archive/release/melodic/schunk_libm5api/0.6.13-2.tar.gz;
    sha256 = "e343d467eeaa11ed11bdd9940c51aa9a1dd4c1965610423e77b41cb18c5a80a7";
  };

  buildInputs = [ libntcan libpcan ];
  propagatedBuildInputs = [ libntcan libpcan ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libm5api to use it as a ros dependency. Original sources from http://www.schunk-modular-robotics.com/fileadmin/user_upload/software/schunk_libm5api_source.zip.'';
    license = with lib.licenses; [ asl20 ];
  };
}
