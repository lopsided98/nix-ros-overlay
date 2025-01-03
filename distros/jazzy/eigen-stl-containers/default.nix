
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-jazzy-eigen-stl-containers";
  version = "1.0.0-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigen_stl_containers-release/archive/release/jazzy/eigen_stl_containers/1.0.0-7.tar.gz";
    name = "1.0.0-7.tar.gz";
    sha256 = "00362aa1010a4f01f68819fb9708bc950d61d47a57de4a7949cc71ef21df227e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides a set of typedef's that allow
  using Eigen datatypes in STL containers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
