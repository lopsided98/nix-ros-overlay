
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, network-interface, catkin, roslint }:
buildRosPackage {
  pname = "ros-lunar-ibeo-core";
  version = "2.0.2";

  src = fetchurl {
    url = https://github.com/astuff/ibeo_core-release/archive/release/lunar/ibeo_core/2.0.2-0.tar.gz;
    sha256 = "018781b971bb1fc93d0a62225db60cfb552cc8b3867bbe99301f37822684f84c";
  };

  buildInputs = [ network-interface roslint ];
  propagatedBuildInputs = [ network-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ibeo_core package'';
    #license = lib.licenses.MIT;
  };
}
