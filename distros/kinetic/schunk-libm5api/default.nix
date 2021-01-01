
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libntcan, libpcan }:
buildRosPackage {
  pname = "ros-kinetic-schunk-libm5api";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/schunk_modular_robotics-release/archive/release/kinetic/schunk_libm5api/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "a4abd55a6ae0eb74882939abfdddd95d29e76ab9dc8c5ed30d7e40e20bdac24d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libntcan libpcan ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libm5api to use it as a ros dependency. Original sources from http://www.schunk-modular-robotics.com/fileadmin/user_upload/software/schunk_libm5api_source.zip.'';
    license = with lib.licenses; [ asl20 ];
  };
}
