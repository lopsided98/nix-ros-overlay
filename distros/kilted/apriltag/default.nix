
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, opencv, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-apriltag";
  version = "3.4.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag-release/archive/release/kilted/apriltag/3.4.3-2.tar.gz";
    name = "3.4.3-2.tar.gz";
    sha256 = "53516b380b6c42e91198fe9adb245e634c7793358c3a276b12cc0ad296cc2e88";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.numpy ];
  checkInputs = [ opencv opencv.cxxdev ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "AprilTag detector library";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
