
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, can-msgs, catkin, pacmod-msgs, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-pacmod";
  version = "2.0.2";

  src = fetchurl {
    url = https://github.com/astuff/pacmod-release/archive/release/lunar/pacmod/2.0.2-0.tar.gz;
    sha256 = "a95d1ad81a22aa080c1cf74c9674b5b90dac354b65b4d393c7196f4e1a91cb73";
  };

  buildInputs = [ roslint pacmod-msgs std-msgs can-msgs roscpp ];
  propagatedBuildInputs = [ std-msgs can-msgs roscpp pacmod-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''AutonomouStuff PACMod driver package'';
    #license = lib.licenses.MIT;
  };
}
