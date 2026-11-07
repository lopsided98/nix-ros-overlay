
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catch2, cmake, doxygen, eigen, git, matio, pkg-config, python3Packages, simde }:
buildRosPackage {
  pname = "ros-humble-jrl-cmakemodules";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jrl_cmakemodules-release/archive/release/humble/jrl_cmakemodules/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "730a57d9b4cc15c9a12a762682a750d2604d9c2f6ec812c43ec1e33bfdd7eae2";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ boost catch2 eigen git matio python3Packages.nanobind python3Packages.numpy python3Packages.pytest python3Packages.typing-extensions simde ];
  propagatedBuildInputs = [ doxygen pkg-config ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "CMake utility toolbox";
    license = with lib.licenses; [ gpl3 lgpl3Only bsd3 mit asl20 ];
  };
}
