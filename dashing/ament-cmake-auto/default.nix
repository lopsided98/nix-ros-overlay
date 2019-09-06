
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-auto";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/dashing/ament_cmake_auto/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "76740cdb80e665b87e70129ab0b9844164c9e8e8af203aa04de9a76c20ec2899";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The auto-magic functions for ease to use of the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
