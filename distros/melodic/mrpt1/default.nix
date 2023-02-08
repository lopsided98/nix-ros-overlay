
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, catkin, cmake, eigen, ffmpeg, freeglut, libjpeg, libpcap, libusb1, octomap, opencv, python, pythonPackages, suitesparse, udev, wxGTK, zlib }:
buildRosPackage {
  pname = "ros-melodic-mrpt1";
  version = "1.5.9-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "mrpt-ros-pkg-release";
        repo = "mrpt1-release";
        rev = "release/melodic/mrpt1/1.5.9-1";
        sha256 = "sha256-0aPmClQk3GUqao+WQQIWznV19VMHtmrsUJ0J+GYEhpY=";
      };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ assimp boost catkin eigen ffmpeg freeglut libjpeg libpcap libusb1 octomap opencv python pythonPackages.numpy suitesparse udev wxGTK zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Mobile Robot Programming Toolkit (MRPT) version 1.5.x'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
