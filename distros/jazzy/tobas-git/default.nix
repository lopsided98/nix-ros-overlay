
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libgit2-dev, ament-cmake, pkg-config }:
buildRosPackage {
  pname = "ros-jazzy-tobas-git";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_git/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "8b3452227a386f9978e8547fb8ee2ca9ca685f30de8b9a99f26f4a256a115d4e";
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
