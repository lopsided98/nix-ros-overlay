
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, doxygen, eigenpy, ffmpeg, git, ipopt, jrl-cmakemodules, pinocchio, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-crocoddyl";
  version = "3.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crocoddyl-release/archive/release/jazzy/crocoddyl/3.2.1-2.tar.gz";
    name = "3.2.1-2.tar.gz";
    sha256 = "c59f9b53b621d38fe9b69c17bd9ad38dc3eada8ea294225f28aa8c9758ec24e6";
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
