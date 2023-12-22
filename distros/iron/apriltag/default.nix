
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, opencv, python3Packages }:
buildRosPackage {
  pname = "ros-iron-apriltag";
  version = "3.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag-release/archive/release/iron/apriltag/3.2.0-5.tar.gz";
    name = "3.2.0-5.tar.gz";
    sha256 = "da54787b7a1d54c8abfab0c6685aae78a4e910fc40b9e163526b7d255cc7f853";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3Packages.numpy ];
  checkInputs = [ opencv opencv.cxxdev ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AprilTag detector library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
