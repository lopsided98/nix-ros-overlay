
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, opencv, python3Packages }:
buildRosPackage {
  pname = "ros-humble-apriltag";
  version = "3.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag-release/archive/release/humble/apriltag/3.2.0-2.tar.gz";
    name = "3.2.0-2.tar.gz";
    sha256 = "fc489bc60d251437c4e25fb49c00dae9883dfbcce466b13ba179a7ba29c09e95";
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
