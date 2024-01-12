
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libntcan, libpcan }:
buildRosPackage {
  pname = "ros-noetic-schunk-libm5api";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/schunk_modular_robotics-release/archive/release/noetic/schunk_libm5api/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "e3fad08c1926bc24a510f7801c58b823c8790f8114f06747bbb7b6f3f033ce28";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ libntcan libpcan ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libm5api to use it as a ros dependency. Original sources from http://www.schunk-modular-robotics.com/fileadmin/user_upload/software/schunk_libm5api_source.zip.'';
    license = with lib.licenses; [ asl20 ];
  };
}
