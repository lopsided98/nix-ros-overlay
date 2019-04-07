
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dpkg }:
buildRosPackage {
  pname = "ros-kinetic-libntcan";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/ipa320/cob_extern-release/archive/release/kinetic/libntcan/0.6.12-0.tar.gz;
    sha256 = "dc40c75f30a95dcb59f25d8e57560bc61c29096aa2947c9dab9a160eef98348b";
  };

  buildInputs = [ dpkg ];
  propagatedBuildInputs = [ dpkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libntcan to use it as a ros dependency.'';
    #license = lib.licenses.proprietary;
  };
}
