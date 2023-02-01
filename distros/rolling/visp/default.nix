
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bzip2, cmake, doxygen, eigen, libjpeg, liblapack, libpng, libv4l, libxml2, opencv, xorg }:
buildRosPackage {
  pname = "ros-rolling-visp";
  version = "3.5.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "visp-release";
        rev = "release/rolling/visp/3.5.0-1";
        sha256 = "sha256-nMrdYB+RessgluLVeY69cP1jA4ucoAfcxyaNk1gyiSQ=";
      };

  buildType = "cmake";
  buildInputs = [ bzip2 cmake doxygen ];
  propagatedBuildInputs = [ eigen libjpeg liblapack libpng libv4l libxml2 opencv xorg.libX11 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''ViSP standing for Visual Servoing Platform is a modular cross
    platform library that allows prototyping and developing applications
    using visual tracking and visual servoing technics at the heart of the
    researches done by Inria Lagadic team. ViSP is able to compute control
    laws that can be applied to robotic systems. It provides a set of visual
    features that can be tracked using real time image processing or computer
    vision algorithms. ViSP provides also simulation capabilities.

    ViSP can be useful in robotics, computer vision, augmented reality
    and computer animation.'';
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
