
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rsync }:
buildRosPackage {
  pname = "ros-kinetic-abseil-cpp";
  version = "0.4.2-r3";

  src = fetchurl {
    url = "https://github.com/Eurecat/abseil_cpp-release/archive/release/kinetic/abseil_cpp/0.4.2-3.tar.gz";
    name = "0.4.2-3.tar.gz";
    sha256 = "083780d48676ac440c77547f557a27cd42746d4f7e42787ca4bf198d79cdc2ff";
  };

  buildType = "catkin";
  buildInputs = [ rsync ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The abseil_cpp package'';
    license = with lib.licenses; [ "Apache-1.0" ];
  };
}
