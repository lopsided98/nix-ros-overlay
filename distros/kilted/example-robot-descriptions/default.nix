
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake, coal, git, jrl-cmakemodules, pinocchio, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-example-robot-descriptions";
  version = "7.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/example-robot-descriptions-release/archive/release/kilted/example_robot_descriptions/7.0.0-1.tar.gz";
    name = "7.0.0-1.tar.gz";
    sha256 = "b4ffbe9b313332754722636566a367a49ee7e807cab993568815d3a53033256b";
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
