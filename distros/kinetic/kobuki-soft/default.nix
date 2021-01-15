
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, kobuki-softapps, kobuki-softnode }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-soft";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_soft-release/archive/release/kinetic/kobuki_soft/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "f2c8ca2da587185a4f6238fd5f2e8d09910eade0ea0dc0dff91f59d01d62f9a7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ kobuki-softapps kobuki-softnode ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Soft kobuki impementation meta package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
