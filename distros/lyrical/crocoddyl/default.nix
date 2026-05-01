
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_pinocchio, ament-cmake, boost, cmake, doxygen, eigenpy, git, ipopt, jrl-cmakemodules, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-crocoddyl";
  version = "3.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crocoddyl-release/archive/release/lyrical/crocoddyl/3.2.0-5.tar.gz";
    name = "3.2.0-5.tar.gz";
    sha256 = "1d3cc5b7d1314d9182a8da774715efb6d58a256f26eefe6d561d4cc3cc0d73d4";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git jrl-cmakemodules ];
  propagatedBuildInputs = [ _unresolved_pinocchio ament-cmake boost eigenpy ipopt python3 python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Crocoddyl optimal control library";
    license = with lib.licenses; [ bsd3 ];
  };
}
