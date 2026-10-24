
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libgit2, pkg-config }:
buildRosPackage {
  pname = "ros-jazzy-tobas-git";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_git/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "c0555319e0dfe831abe1a2436bfc2ba47af151d1f1170e6c77edcfb61ce9050f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  propagatedBuildInputs = [ libgit2 ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "C++ library for performing Git repository operations from Tobas applications.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
