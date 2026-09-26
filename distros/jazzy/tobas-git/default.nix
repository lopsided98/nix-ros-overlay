
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libgit2-dev, ament-cmake, pkg-config }:
buildRosPackage {
  pname = "ros-jazzy-tobas-git";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_git/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "4bc364de1170be86a769dc47c612e166a514df7bbcdf8597ae2b6269b9cd4666";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  propagatedBuildInputs = [ _unresolved_libgit2-dev ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "C++ library for performing Git repository operations from Tobas applications.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
