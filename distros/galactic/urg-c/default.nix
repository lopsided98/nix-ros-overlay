
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-galactic-urg-c";
  version = "1.0.4001-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_c-release/archive/release/galactic/urg_c/1.0.4001-3.tar.gz";
    name = "1.0.4001-3.tar.gz";
    sha256 = "97c8b1e614609f50eb7997f618f69a823737f33d26cb89e7ef9aeb3c38bfe342";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The urg_c package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
