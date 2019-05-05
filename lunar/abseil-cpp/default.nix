
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rsync, catkin }:
buildRosPackage {
  pname = "ros-lunar-abseil-cpp";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/Eurecat/abseil_cpp-release/archive/release/lunar/abseil_cpp/0.2.3-0.tar.gz;
    sha256 = "e521766908e0b12b0879347524b56e1447782d76067aabaa115adbd3b566ea5e";
  };

  buildInputs = [ rsync ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The abseil_cpp package'';
    license = with lib.licenses; [ "Apache-1.0" ];
  };
}
