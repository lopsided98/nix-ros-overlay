
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-md49-serialport";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/Scheik/md49_base_controller-release/archive/release/kinetic/md49_serialport/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "425eda81e26602414b014624fb3b17f96be8952cbc22f916714ed96237306090";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The md49_serialport package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
