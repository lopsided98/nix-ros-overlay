
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, tf2-ros, tf2, eigen, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-tf2-eigen";
  version = "0.11.4-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/geometry2-release/archive/release/dashing/tf2_eigen/0.11.4-1.tar.gz;
    sha256 = "dc819a0cae9050aed64abe0c3bbbbfa1ec05e8fa2e6558678f3852bd9d9159af";
  };

  buildType = "ament_cmake";
  buildInputs = [ tf2 eigen tf2-ros geometry-msgs ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ tf2 tf2-ros geometry-msgs eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''tf2_eigen'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
