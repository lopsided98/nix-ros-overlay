
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin-pip, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-lunar-pyros-config";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/pyros-dev/pyros-config-rosrelease/archive/release/lunar/pyros_config/0.2.0-0.tar.gz;
    sha256 = "bdb89f2a01540233242469bc1c4620a5f2037899cbeeaf78a79fcc703e5c5bf4";
  };

  buildInputs = [ catkin-pip pythonPackages.pytest pythonPackages.six ];
  propagatedBuildInputs = [ pythonPackages.pytest pythonPackages.six ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configuration package for Pyros'';
    #license = lib.licenses.BSD;
  };
}
