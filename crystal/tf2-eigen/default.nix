
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-ros, geometry-msgs, ament-cmake, eigen, tf2, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-crystal-tf2-eigen";
  version = "0.10.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/crystal/tf2_eigen/0.10.1-0.tar.gz";
    name = "0.10.1-0.tar.gz";
    sha256 = "cfd1668cfa4bc1daff1156eaa9c84067d7179d5a0b140b749e6872fab29b882c";
  };

  buildType = "ament_cmake";
  buildInputs = [ eigen geometry-msgs tf2-ros tf2 ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ eigen geometry-msgs tf2-ros tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''tf2_eigen'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
