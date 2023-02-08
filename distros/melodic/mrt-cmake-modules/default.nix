
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lcov, pythonPackages, ros-environment }:
buildRosPackage {
  pname = "ros-melodic-mrt-cmake-modules";
  version = "1.0.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "KIT-MRT";
        repo = "mrt_cmake_modules-release";
        rev = "release/melodic/mrt_cmake_modules/1.0.4-1";
        sha256 = "sha256-HsXMI+9eH6Suh9jIyPUkkwkOrPzB7vvm5fwmFO99V7s=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ lcov pythonPackages.catkin-pkg pythonPackages.pyyaml pythonPackages.rospkg pythonPackages.setuptools ros-environment ];
  nativeBuildInputs = [ catkin lcov pythonPackages.catkin-pkg pythonPackages.pyyaml pythonPackages.rospkg pythonPackages.setuptools ros-environment ];

  meta = {
    description = ''CMake Functions and Modules for automating CMake'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
