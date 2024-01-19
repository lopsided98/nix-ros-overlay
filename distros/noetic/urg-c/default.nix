
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-urg-c";
  version = "1.0.405-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urg_c-release/archive/release/noetic/urg_c/1.0.405-1.tar.gz";
    name = "1.0.405-1.tar.gz";
    sha256 = "c2af896d06b72140f91876cdc806f1d43015c872b50693a0303ec93b0d7a3750";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The urg_c package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
