
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-baldor";
  version = "0.1.2";

  src = fetchurl {
    url = "https://github.com/crigroup/baldor-release/archive/release/kinetic/baldor/0.1.2-0.tar.gz";
    name = "0.1.2-0.tar.gz";
    sha256 = "a0882e84b2588e799f2ef724803b2a6ed22ba8bdb086f807e79f7990048293ab";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.numpy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The baldor package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
