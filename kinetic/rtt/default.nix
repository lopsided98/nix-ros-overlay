
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, omniorb, catkin, pkg-config, cmake }:
buildRosPackage {
  pname = "ros-kinetic-rtt";
  version = "2.9.0-r2";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt-release/archive/release/kinetic/rtt/2.9.0-2.tar.gz;
    sha256 = "a0d78209c9c538538f0f453ee606232cb670a47ea564da7d7eb74ec3343b3040";
  };

  buildInputs = [ omniorb boost pkg-config ];
  propagatedBuildInputs = [ omniorb catkin boost pkg-config ];
  nativeBuildInputs = [ cmake catkin ];

  meta = {
    description = ''Orocos/RTT component framework'';
    license = with lib.licenses; [ gpl2 ];
  };
}
