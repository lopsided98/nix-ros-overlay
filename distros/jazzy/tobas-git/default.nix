
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libgit2, pkg-config }:
buildRosPackage {
  pname = "ros-jazzy-tobas-git";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_git/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "f23a65b7f064b5469ef67d3fdf58f03264875fdead2c100640084515922cf3f2";
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
