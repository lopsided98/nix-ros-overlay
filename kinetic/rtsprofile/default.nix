
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-rtsprofile";
  version = "2.0.0";

  src = fetchurl {
    url = https://github.com/tork-a/rtsprofile-release/archive/release/kinetic/rtsprofile/2.0.0-0.tar.gz;
    sha256 = "a82ca4cf1b9513d13d30667f3de87550e21a286afbce660ae2bcc9c4220a2b19";
  };

  buildInputs = [ pythonPackages.setuptools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Library to read, manipulate and write RT system profiles using the RTSProfile XML schema.</p>'';
    license = with lib.licenses; [ "EPL" ];
  };
}
