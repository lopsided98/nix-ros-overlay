
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake, coal, git, jrl-cmakemodules, pinocchio, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-example-robot-descriptions";
  version = "7.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/example-robot-descriptions-release/archive/release/rolling/example_robot_descriptions/7.0.0-2.tar.gz";
    name = "7.0.0-2.tar.gz";
    sha256 = "39aa944ec43a8d498a17183e8a0ad4f1e4aeac9e47fc2fba177c10a0a5280e52";
  };

  buildType = "cmake";
  buildInputs = [ cmake git jrl-cmakemodules ];
  propagatedBuildInputs = [ ament-cmake coal pinocchio python3 python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Set of robot URDFs for benchmarking and developed examples.";
    license = with lib.licenses; [ bsd2 asl20 bsd2 bsd3 bsdOriginal "ISC" mpl20 ];
  };
}
