
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rtsprofile, rtctree }:
buildRosPackage {
  pname = "ros-kinetic-rtshell";
  version = "3.0.1-r2";

  src = fetchurl {
    url = https://github.com/tork-a/rtshell-release/archive/release/kinetic/rtshell/3.0.1-2.tar.gz;
    sha256 = "11bc48379d1c2fb16cafff03a0c79e40bec4726d318379199bdb0ad1a490c269";
  };

  buildInputs = [ pythonPackages.setuptools ];
  propagatedBuildInputs = [ rtsprofile rtctree ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Shell commands for managing RT-Middleware running on OpenRTM-aist.</p>'';
    license = with lib.licenses; [ "EPL" ];
  };
}
