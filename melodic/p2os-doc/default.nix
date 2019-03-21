
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-p2os-doc";
  version = "2.2.0";

  src = fetchurl {
    url = https://github.com/allenh1/p2os-release/archive/release/melodic/p2os_doc/2.2.0-0.tar.gz;
    sha256 = "7e567f72d9968ed1411ae855b5b9c45a15c831fea99f5d22acf7cc5c2d185c79";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains the Documentation for the p2os driver/componenets'';
    #license = lib.licenses.BSD;
  };
}
