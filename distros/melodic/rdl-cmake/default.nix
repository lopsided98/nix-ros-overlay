
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clang, cppcheck, lcov }:
buildRosPackage {
  pname = "ros-melodic-rdl-cmake";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/-/archive/release/melodic/rdl_cmake/3.2.0-1/rdl_release-release-melodic-rdl_cmake-3.2.0-1.tar.gz";
    name = "rdl_release-release-melodic-rdl_cmake-3.2.0-1.tar.gz";
    sha256 = "30c5695aa0bb0847d991d05020be78e50d5795c51b832eeb17990da8c0488bc2";
  };

  buildType = "catkin";
  checkInputs = [ clang cppcheck lcov ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rdl_cmake package'';
    license = with lib.licenses; [ "zlib" ];
  };
}
