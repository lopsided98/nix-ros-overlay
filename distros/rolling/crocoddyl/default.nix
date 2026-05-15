
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, doxygen, eigenpy, ffmpeg, git, ipopt, jrl-cmakemodules, pinocchio, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-crocoddyl";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crocoddyl-release/archive/release/rolling/crocoddyl/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "c22ef9c40c869bab7c7bb3f09372a8e2384d3b3fcf660cddb81d52c3a8a584a4";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git jrl-cmakemodules ];
  checkInputs = [ ffmpeg python3Packages.nbconvert python3Packages.notebook python3Packages.scipy ];
  propagatedBuildInputs = [ ament-cmake boost eigenpy ipopt pinocchio python3 python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Crocoddyl optimal control library";
    license = with lib.licenses; [ bsd3 ];
  };
}
