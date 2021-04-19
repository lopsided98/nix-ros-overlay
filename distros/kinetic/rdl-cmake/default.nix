
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clang, cppcheck, lcov }:
buildRosPackage {
  pname = "ros-kinetic-rdl-cmake";
  version = "1.1.0";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/-/archive/release/kinetic/rdl_cmake/1.1.0-0/rdl_release-release-kinetic-rdl_cmake-1.1.0-0.tar.gz";
    name = "rdl_release-release-kinetic-rdl_cmake-1.1.0-0.tar.gz";
    sha256 = "a74329b5e992686e8c42fe73ec706f11446431470012ea8b8d3389d2083a2208";
  };

  buildType = "catkin";
  checkInputs = [ clang cppcheck lcov ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rdl_cmake package'';
    license = with lib.licenses; [ "zlib" ];
  };
}
