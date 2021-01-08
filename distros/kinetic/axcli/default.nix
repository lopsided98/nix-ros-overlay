
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-axcli";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/po1/axcli-release/archive/release/kinetic/axcli/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "684efecba78e312cbe928e090b282b6e7376fddace2e8b2a707a3880e05eac3c";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple actionlib CLI client'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
