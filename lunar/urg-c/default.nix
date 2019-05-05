
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-urg-c";
  version = "1.0.405";

  src = fetchurl {
    url = https://github.com/ros-gbp/urg_c-release/archive/release/lunar/urg_c/1.0.405-0.tar.gz;
    sha256 = "e54a7546a09587b171d42dc1a476f90853a490679a3012012179cee70381ce2b";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The urg_c package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
