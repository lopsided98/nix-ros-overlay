
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-crystal-apriltag";
  version = "0.9.8-r1";

  src = fetchurl {
    url = https://github.com/christianrauch/apriltag2-release/archive/release/crystal/apriltag/0.9.8-1.tar.gz;
    sha256 = "3f021fcda7c06021420a3edbd25dcac2df45bb01d90de64e6cade44e94f8b3e0";
  };

  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AprilTag detector library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
