
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libgit2-dev, ament-cmake, pkg-config }:
buildRosPackage {
  pname = "ros-jazzy-tobas-git";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_git/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "538ea1bf2776b9200dcda136c908600cdbb922dcfa17df8a3fe6e0d9cafa3854";
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
