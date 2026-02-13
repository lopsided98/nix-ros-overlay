
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, doxygen, eigenpy, git, ipopt, jrl-cmakemodules, pinocchio, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-crocoddyl";
  version = "3.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crocoddyl-release/archive/release/rolling/crocoddyl/3.2.0-3.tar.gz";
    name = "3.2.0-3.tar.gz";
    sha256 = "45f89f1e26efa79513b3c5b7b112bcca2f5f6b7220824b81814d395d02ac6e39";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git jrl-cmakemodules ];
  propagatedBuildInputs = [ ament-cmake boost eigenpy ipopt pinocchio python3 python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Crocoddyl optimal control library";
    license = with lib.licenses; [ bsd3 ];
  };
}
