
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, doxygen, eigen, git, jrl-cmakemodules, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-eigenpy";
  version = "3.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigenpy-release/archive/release/humble/eigenpy/3.13.0-1.tar.gz";
    name = "3.13.0-1.tar.gz";
    sha256 = "f22f74034b16c0685f0639d14c8b2a2f5b0139771d89d12be1ba3080fdb1cafe";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git jrl-cmakemodules ];
  propagatedBuildInputs = [ boost eigen python3 python3Packages.numpy python3Packages.scipy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Bindings between Numpy and Eigen using Boost.Python";
    license = with lib.licenses; [ "BSD-2-Clause" ];
  };
}
