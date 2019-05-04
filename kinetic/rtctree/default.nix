
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-rtctree";
  version = "3.0.1";

  src = fetchurl {
    url = https://github.com/tork-a/rtctree-release/archive/release/kinetic/rtctree/3.0.1-0.tar.gz;
    sha256 = "69946554d350acbdf59f73c72c071d069551bf9bbaa830a7c3de096fb476261b";
  };

  buildInputs = [ pythonPackages.setuptools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>API for interacting with running RT-Components and managing RTM-based systems using OpenRTM-aist.</p>'';
    license = with lib.licenses; [ "EPL" ];
  };
}
