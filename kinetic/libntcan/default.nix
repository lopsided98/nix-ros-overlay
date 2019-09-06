
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dpkg }:
buildRosPackage {
  pname = "ros-kinetic-libntcan";
  version = "0.6.13-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/kinetic/libntcan/0.6.13-1.tar.gz";
    name = "0.6.13-1.tar.gz";
    sha256 = "4b6abd240e671e60900b3dba93617eea209f02ddf0d1e10e379dd83f27c444c2";
  };

  buildType = "catkin";
  buildInputs = [ dpkg ];
  propagatedBuildInputs = [ dpkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libntcan to use it as a ros dependency.'';
    license = with lib.licenses; [ "proprietary" ];
  };
}
